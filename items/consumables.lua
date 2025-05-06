sendInfoMessage("Loading Consumeables...", "TOGAPack")

-- Initialize recipe table...
togabalatro.validsmeltrecipes = {}

-- Add recipe checks as functions.
-- Iron + Coal Coke (consumed) to vanilla Steel
togabalatro.validsmeltrecipes[#togabalatro.validsmeltrecipes+1] = function(selcards)
	selcards = selcards or {}
	local coalcoke, iron = nil, nil
	for i, v in ipairs(selcards) do
		if SMODS.has_enhancement(v, 'm_toga_coalcoke') then coalcoke = v end
		if SMODS.has_enhancement(v, 'm_toga_iron') then iron = v end
	end
	return iron and coalcoke and iron ~= coalcoke, { cards = { iron }, destroycard = { coalcoke }, allcards = { iron, coalcoke } }, 'm_steel', localize('toga_steelrecipe')
end

-- Gold + Silver to Electrum
togabalatro.validsmeltrecipes[#togabalatro.validsmeltrecipes+1] = function(selcards)
	selcards = selcards or {}
	local gold, silver = nil, nil
	for i, v in ipairs(selcards) do
		if SMODS.has_enhancement(v, 'm_gold') then gold = v end
		if SMODS.has_enhancement(v, 'm_toga_silver') then silver = v end
	end
	return gold and silver and gold ~= silver, { cards = { gold, silver } }, 'm_toga_electrum', localize('toga_electrumrecipe')
end

-- Copper cards are not new... for this mod they are. However, other mods have
-- implemented Copper cards of their own. See crossmod.lua for compatibility.
togabalatro.validcopper = {'m_toga_copper'}

-- Check if card has any of our Copper enhancements.
togabalatro.validcoppercheck = function(card)
	for i, v in ipairs(togabalatro.validcopper) do
		if SMODS.has_enhancement(card, v) then return true end
	end
end

-- 3x Copper + 1x Tin = 4x Bronze
togabalatro.validsmeltrecipes[#togabalatro.validsmeltrecipes+1] = function(selcards)
	selcards = selcards or {}
	local copper1, copper2, copper3, tin = nil, nil, nil, nil
	local copper1ok, copper2ok, copper3ok, tinok = false, false, false, false
	local iter, iterlimit = 0, 100
	for i, v in ipairs(selcards) do
		repeat -- scary jank, but works.
			iter = iter + 1
			if not copper1ok and togabalatro.validcoppercheck(v) then copper1 = v; copper1ok = true; break end
			if not copper2ok and togabalatro.validcoppercheck(v) then copper2 = v; copper2ok = true; break end
			if not copper3ok and togabalatro.validcoppercheck(v) then copper3 = v; copper3ok = true; break end
			if not tinok and SMODS.has_enhancement(v, 'm_toga_tin') then tin = v; break end
		until (copper1ok and copper2ok and copper3ok and tinok) or iter > iterlimit
	end
	return copper1 and copper2 and copper3 and tin and copper1 ~= tin and copper1 ~= copper2 and copper2 ~= copper3 and copper1 ~= copper3, { cards = { copper1, copper2, copper3, tin } }, 'm_toga_bronze', localize('toga_bronzerecipe')
end

-- Check recipe.
togabalatro.checkvalidrecipe = function()
	local text, recipetxt, userecipetxt = localize('toga_novalidrecipe'), localize('toga_unknownvalidrecipe'), false
	local cando, cardtable, enhancement, found = false, {}, "", false
	if G.hand and G.hand.highlighted then
		for i = 1, #togabalatro.validsmeltrecipes do
			if found then break end
			
			cando, cardtable, enhancement, recipetxt = togabalatro.validsmeltrecipes[i](G.hand.highlighted)
			if cando and cardtable and enhancement and G.P_CENTERS[enhancement] then found = true; userecipetxt = true end
		end
		if not recipetxt then recipetxt = localize('toga_unknownvalidrecipe') end
	end
	return cando, found and userecipetxt and recipetxt or text
end

-- Feel the heat of the Smeltery.
SMODS.Consumable{
	key = 'furnace',
	set = 'Tarot',
	atlas = "TOGAConsumables",
	pos = {x = 3, y = 0},
	cost = 1,
	config = { extra = { usecost = 4 } },
	loc_vars = function(self, info_queue, card)
		local cando, txt = togabalatro.checkvalidrecipe()
		return { key = cando and self.key..'_ready' or G.hand and G.hand.highlighted and #G.hand.highlighted > 0 and self.key.."_novalidrecipe" or self.key, vars = { txt, card.ability.extra.usecost } }
	end,
	can_use = function(self, card, area, copier)
		if togabalatro.validsmeltrecipes and #togabalatro.validsmeltrecipes < 0 then return false end
		
		if (G.hand.highlighted and #G.hand.highlighted > 0) then
			for i = 1, #togabalatro.validsmeltrecipes do
				if togabalatro.validsmeltrecipes[i](G.hand.highlighted) then return true end
			end
		end
		return false
	end,
	use = function(self, card, area)
		if togabalatro.validsmeltrecipes and #togabalatro.validsmeltrecipes < 0 then return end
		local cando, cardtable, enhancement, found = false, {}, "", false
		for i = 1, #togabalatro.validsmeltrecipes do
			if found then break end
			
			cando, cardtable, enhancement = togabalatro.validsmeltrecipes[i](G.hand.highlighted)
			if cando and cardtable and enhancement and G.P_CENTERS[enhancement] then found = true end
		end
		if not (cando or found) then return end
		
		if cardtable.cards and #cardtable.cards > 0 then
			for i, v in ipairs(cardtable.cards) do
				if v and G.P_CENTERS[enhancement] then
					v:set_ability(G.P_CENTERS[enhancement])
					card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize('toga_furnaceprocess'), sound = togabalatro.config.SFXWhenTriggered and 'toga_xporb'})
				end
			end
		end
		
		if cardtable.destroycard and #cardtable.destroycard > 0 then
			local destroyed_cards = {}
			for k, dcard in ipairs(G.hand.cards) do
				for i, v in ipairs(cardtable.destroycard) do
					if v == dcard then destroyed_cards[#destroyed_cards+1] = dcard end
				end
			end
			SMODS.calculate_context({remove_playing_cards = true, removed = destroyed_cards})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				play_sound('tarot1')
				card:juice_up(0.3, 0.5)
			return true end}))
			
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.1,
				func = function() 
					for i=#destroyed_cards, 1, -1 do
						local card = destroyed_cards[i]
						if card.ability.name == 'Glass Card' then 
							card:shatter()
						else
							card:start_dissolve(nil, i == #destroyed_cards)
						end
					end
					return true
				end
			}))
		end
		local payment = to_big(card.ability.extra.usecost)
		if to_big(G.GAME.dollars) - payment < to_big(0) then payment = payment + (to_big(G.GAME.dollars) - to_big(card.ability.extra.usecost)) end
		G.E_MANAGER:add_event(Event({trigger = "after", delay = 0.2, func = function()
			G.hand:unhighlight_all()
			G.hand:parse_highlighted()
			ease_dollars(-payment)
			return true
		end,}))
	end,
	keep_on_use = function(self, card)
		if to_big(G.GAME.dollars) - to_big(card.ability.extra.usecost) > to_big(0) then return true end
	end,
	set_badges = function(self, card, badges)
        badges[#badges] = create_badge(localize('toga_crafttarot'), G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1.2)
    end,
	pixel_size = { w = 71, h = 77 },
	perishable_compat = false,
	eternal_compat = false
}

-- Set up a global pool of 'minerals'.
togabalatro.validminerals = {'m_gold', 'm_toga_iron', 'm_toga_copper', 'm_toga_tin', 'm_toga_silver', 'm_toga_osmium'}

-- Init when necessary...
togabalatro.mineralpool = {}

-- ...using this. May be crude, but works.
togabalatro.initmineralpool = function()
	togabalatro.mineralpool = {}
	for k, v in pairs(togabalatro.validminerals) do
		if G.P_CENTERS[v] then
			local iweight = tonumber(G.P_CENTERS[v].weight) or 5
			local itable = { key = v, weight = iweight >= 1 and iweight or 1 }
			if togabalatro.config.DoMoreLogging then sendDebugMessage(itable.key.." "..itable.weight, "TOGAPack") end
			table.insert(togabalatro.mineralpool, itable)
		end
	end
end

-- Find the metal pages... wait what?
SMODS.Consumable {
	key = 'miningprospect',
	set = 'Tarot',
	atlas = "TOGAConsumables",
	pos = {x = 4, y = 0},
	cost = 5,
	config = { extra = { odds = 8 } },
	loc_vars = function(self, info_queue, card)
		return {vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds }}
	end,
	can_use = function(self, card, area, copier)
		return G.playing_cards and #G.playing_cards > 1
	end,
	use = function(self, card, area, copier)
		togabalatro.initmineralpool() -- recalc the pool.
		for i, v in ipairs(G.playing_cards) do
			if SMODS.has_enhancement(v, 'm_stone') then
				if pseudorandom("toga_minediamonds") < G.GAME.probabilities.normal/card.ability.extra.odds then
					local enhancement = SMODS.poll_enhancement({ guaranteed = true, options = togabalatro.validminerals, type_key = 'modmineral' })
					G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
						card:juice_up()
						v:set_ability(G.P_CENTERS[enhancement])
					return true end }))
					card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize('toga_stonefound'), sound = togabalatro.config.SFXWhenTriggered and 'toga_xporb'})
				else
					card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize('toga_stonenothing')})
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1,func = function() card:juice_up(); v:start_dissolve(); return true end }))
				end
			end
		end
	end,
	set_badges = function(self, card, badges)
        badges[#badges] = create_badge(localize('toga_minetarot'), G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1.2)
    end,
	pixel_size = { w = 71, h = 77 },
	perishable_compat = false,
	eternal_compat = false
}

-- SPB function.
local function toga_spbdeckwreck(card, failedchance)
	if not (G.deck and G.deck.cards and #G.deck.cards > 0) then return end
	if failedchance then card_eval_status_text(G.deck.cards[1], 'extra', nil, nil, nil, {message = localize('toga_spbavoidfail'), colour = G.C.RED}) end
	local temp_hand, destroyed_cards = {}, {}
	for k, v in ipairs(G.deck.cards) do temp_hand[#temp_hand+1] = v end
	table.sort(temp_hand, function (a, b) return not a.playing_card or not b.playing_card or a.playing_card < b.playing_card end)
	pseudoshuffle(temp_hand, pseudoseed('spb'))
	
	for i = 1, math.floor(card.ability.extra.cardlimit) do destroyed_cards[#destroyed_cards+1] = temp_hand[i] end
	
	G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
		play_sound('tarot1')
		card:juice_up(0.3, 0.5)
	return true end }))
	
	SMODS.calculate_context({remove_playing_cards = true, removed = destroyed_cards})
	
	G.E_MANAGER:add_event(Event({
		trigger = 'after',
		delay = 0.1,
		func = function() 
			for i=#destroyed_cards, 1, -1 do
				local card = destroyed_cards[i]
				if card.ability.name == 'Glass Card' then 
					card:shatter()
				else
					card:start_dissolve(nil, i == #destroyed_cards)
				end
			end
			return true
		end
	}))
end

SMODS.Consumable{
	key = 'selfpropelledbomb',
	set = 'Spectral',
	atlas = "TOGAConsumables",
	pos = {x = 0, y = 0},
	cost = 10,
	config = {extra = { cardlimit = 20, odds = 4, activated = false } },
	loc_vars = function(self, info_queue, card)
		return {vars = { math.floor(card.ability.extra.cardlimit), card.ability.extra.odds, (G.GAME and G.GAME.probabilities.normal or 1) } }
	end,
	can_use = function(self, card, area, copier)
		return G.deck and G.deck.cards and #G.deck.cards > 0
	end,
	use = function(self, card)
		card.ability.extra.activated = true
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound('toga_spb')
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if pseudorandom("toga_selfpropelledbomb") < G.GAME.probabilities.normal/card.ability.extra.odds or card.ability.extra.activated then
			toga_spbdeckwreck(card, true)
		else
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_safe_ex'), sound = togabalatro.config.SFXWhenRemoving and 'toga_thundershield'})
		end
	end,
	perishable_compat = false,
	eternal_compat = false
}

SMODS.Consumable {
	key = 'sealingaround',
	set = 'Spectral',
	atlas = "TOGAConsumables",
	pos = {x = 1, y = 0},
	cost = 5,
	config = { max_highlighted = 1, extra = 'toga_sealseal' },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = G.P_SEALS[(card.ability or self.config).extra]
		return {vars = {(card.ability or self.config).max_highlighted}}
	end,
	use = function(self, card, area, copier)
		for i = 1, math.min(#G.hand.highlighted, card.ability.max_highlighted) do
			G.E_MANAGER:add_event(Event({func = function()
				play_sound('tarot1')
				card:juice_up(0.3, 0.5)
				return true end }))
			
			G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
				G.hand.highlighted[i]:set_seal(card.ability.extra, nil, true)
				return true end }))
			
			delay(0.5)
		end
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
	end
}

SMODS.Consumable {
	key = 'filesource',
	set = 'Spectral',
	atlas = "TOGAConsumables",
	pos = {x = 2, y = 0},
	cost = 5,
	config = { extra = { cards = 2 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_toga_notification
		return { vars = { card.ability.extra.cards } }
	end,
	can_use = function(self, card)
		if G and G.hand and #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then 
			return true
		end
		return false
	end,
	use = function(self, card, area, copier)
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            card:juice_up(0.3, 0.5)
		return true end }))
		delay(0.2)
		for i, v in pairs(G.hand.highlighted) do
			local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
			G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() v:flip();play_sound('card1', percent, 1);v:juice_up(0.3, 0.3);return true end }))
			G.E_MANAGER:add_event(Event({trigger = 'after',func = function() v:set_ability(G.P_CENTERS["m_toga_notification"]);return true end }))
			G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() v:flip();play_sound('tarot2', percent, 0.6);play_sound('toga_winxpballoon', 1, 2.5);v:juice_up(0.3, 0.3);return true end }))
		end
		delay(0.2)
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
	end,
}