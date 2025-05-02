sendInfoMessage("Loading Jokers...", "TOGAPack")

-- Check for 2 and King.
local function toga_y2kcheck(context)
	local twopresent = 0
	local kingpresent = 0
	for i = 1, #context.full_hand do
		if SMODS.Ranks[context.full_hand[i].base.value].key == "2" then
			twopresent = twopresent+1
		end
		if SMODS.Ranks[context.full_hand[i].base.value].key == "King" then
			kingpresent = kingpresent+1
		end
	end
	return twopresent, kingpresent
end

SMODS.Joker{
	key = 'y2kbug',
	config = { extra = { chips = 25, mult = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 1,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 0 },
	cost = 4,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local twos, kings = toga_y2kcheck(context)
			if twos > 0 and kings > 0 then
				return {chips = card.ability.extra.chips, mult = card.ability.extra.mult}
			end
		end
	end
}

SMODS.Joker{
	key = 'controlpanel',
	config = { extra = { money = 1, increase = 0.5, totalmoney = 7 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money, card.ability.extra.increase, math.ceil(card.ability.extra.totalmoney) } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 1 },
	cost = 7,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.end_of_round and not (context.individual or context.repetition or context.blueprint) and G.GAME.blind.boss then
			card.ability.extra.money = card.ability.extra.money + card.ability.extra.increase
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
		end
	end,
	calc_dollar_bonus = function(self, card)
		if card.ability.extra.money > 0 then
			local jokerslotbonus, consslotbonus = 0, 0
			if G.jokers then jokerslotbonus = card.ability.extra.money*G.jokers.config.card_limit end
			if G.consumeables then consslotbonus = card.ability.extra.money*G.consumeables.config.card_limit end
			card.ability.extra.totalmoney = jokerslotbonus+consslotbonus
			return math.ceil(card.ability.extra.totalmoney)
		end
	end
}

SMODS.Joker{
	key = 'taskmgr',
	config = { extra = { money = 1, wiggling = false } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersMain',
	pos = { x = 0, y = 1 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if G.GAME.current_round.discards_left == 2 then
			local eval = function() return G.GAME.current_round.discards_left == 1 end
			juice_card_until(card, eval, true)
		end
		
		if context.discard and not context.blueprint then
			if G.GAME.current_round.discards_left == 1 then
				return {
					remove = true,
					card = context.other_card
				}
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_infraredbegin")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_infraredend")
		end
	end
}

-- Add up our 4 values and divide by 4 for their average.
local function toga_multaverage(card)
	local hleft, dleft, jslots, cslots = G.GAME.current_round.hands_left or 4, G.GAME.current_round.discards_left or 3, G.jokers and G.jokers.config.card_limit or 5, G.consumeables and G.consumeables.config.card_limit or 2
	card.ability.extra.baseXmult = math.max(card.ability.extra.baseXmult, 1)
	local averagecalc = (hleft+dleft+jslots+cslots)/4
	return math.max(card.ability.extra.baseXmult * averagecalc, card.ability.extra.baseXmult, 1)
end

-- Was previously Task Manager.
SMODS.Joker{
	key = 'useraccounts',
	config = { extra = { baseXmult = 1, totalXmult = 1, odds = 4 } },
	loc_vars = function(self, info_queue, card)
		if self.discovered then
			info_queue[#info_queue + 1] = {key = "toga_useraccountsinfo", set = 'Other'}
		end
		return { vars = { card.ability.extra.totalXmult, (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 3 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.before then
			card.ability.extra.totalXmult = toga_multaverage(card)
		end
		
		if context.individual and context.cardarea == G.play then
			if context.other_card and pseudorandom("toga_useraccounts") < G.GAME.probabilities.normal/card.ability.extra.odds then
				return { x_mult = card.ability.extra.totalXmult }
			end
		end
	end,
	update = function(self, card, context)
		card.ability.extra.totalXmult = toga_multaverage(card)
	end
}

SMODS.Joker{
	key = 'virtualmemory',
	config = { extra = { odds = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersMain',
	pos = { x = 0, y = 3 },
	cost = 6,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if pseudorandom("toga_virtualmemory") < G.GAME.probabilities.normal/card.ability.extra.odds then
				return {
					swap = true,
					message = localize('toga_pagefileuse'),
					colour = G.C.PURPLE,
					sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_mmeclap",
					pitch = not silent and togabalatro.config.SFXWhenTriggered and togabalatro.randompitch(),
					message_card = context.other_card
				}
			end
		end
	end,
}

SMODS.Joker{
	key = 'recyclebin',
	config = { extra = { xchip_increase = 0.05, xchip_mod = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchip_increase, card.ability.extra.xchip_mod, card.ability.extra.xchip_increase*3 } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 2 },
	cost = 12,
	blueprint_compat = true,
	calculate = function(self, card, context)
		local xchipval = card.ability.extra and card.ability.extra.xchip_mod or 1
		
		if context.individual and context.cardarea == G.play and xchipval > 1 then
			if context.other_card == context.scoring_hand[#context.scoring_hand] then
				return {
					x_chips = card.ability.extra.xchip_mod > 1 and card.ability.extra.xchip_mod or nil,
					xchip_message = card.ability.extra.xchip_mod > 1 and {message = localize{ type = "variable", key = "a_xchips", vars = { card.ability.extra.xchip_mod } }, colour = G.C.CHIPS, sound = "xchips"} or nil,
					card = context.blueprint_card or card
				}
			end
		end
	
		if context.remove_playing_cards then
			for k, v in ipairs(context.removed) do
				if v.config.center ~= G.P_CENTERS.c_base then
					card.ability.extra.xchip_mod = card.ability.extra.xchip_mod+(card.ability.extra.xchip_increase*3)
				else
					card.ability.extra.xchip_mod = card.ability.extra.xchip_mod+card.ability.extra.xchip_increase
				end
			end
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex'), sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_recyclebinsfx"})
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_recyclebinsfx")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_plus98emptybin")
		end
	end,
	update = function(self, card, context)
		if card.ability.extra.xchip_mod < 1 then card.ability.extra.xchip_mod = 1 end
	end
}

SMODS.Joker{
	key = 'theinternet',
	config = { extra = { curchips = 0, bonuschips = 15 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.curchips, card.ability.extra.bonuschips } }
	end,
	unlocked = true,
	rarity = 1,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 3 },
	cost = 3,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.ability.extra.curchips = (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.all or 0) * card.ability.extra.bonuschips
		
		if context.using_consumeable and not context.blueprint then
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_chips', vars = { card.ability.extra.curchips } }, colour = G.C.CHIPS })
		end
		
		if context.joker_main and card.ability.extra.curchips > 0 then
			return {
				chips = card.ability.extra.curchips,
			}
		end
	end,
	update = function(self, card, context)
		card.ability.extra.curchips = (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.all or 0) * card.ability.extra.bonuschips
	end
}

SMODS.Joker{
	key = 'computerlock',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersMain',
	pos = { x = 0, y = 0 },
	cost = 10,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.selling_self and not context.retrigger_joker and not context.blueprint_card then
			for i = 1, #G.jokers.cards do
				if G.jokers.cards[i] == card then
					if i > 1 then
						if G.jokers.cards[i-1] and not G.jokers.cards[i-1].ability.eternal and G.jokers.cards[i-1].config.center.key ~= "j_toga_computerlock" then
							G.jokers.cards[i-1]:set_eternal(true)
							G.jokers.cards[i-1].ability.eternal = true
							card_eval_status_text(G.jokers.cards[i-1], 'extra', nil, nil, nil, {message = localize('toga_userlocked'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_mscmenucmd'})
						elseif G.jokers.cards[i-1] and G.jokers.cards[i-1].ability.eternal then
							G.jokers.cards[i-1]:set_eternal(false)
							G.jokers.cards[i-1].ability.eternal = false
							card_eval_status_text(G.jokers.cards[i-1], 'extra', nil, nil, nil, {message = localize('toga_userunlocked'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_mscmenucmd'})
						end
					end
					if i < #G.jokers.cards then
						if G.jokers.cards[i+1] and not G.jokers.cards[i+1].ability.eternal and G.jokers.cards[i+1].config.center.key ~= "j_toga_computerlock" then
							G.jokers.cards[i+1]:set_eternal(true)
							G.jokers.cards[i+1].ability.eternal = true
							card_eval_status_text(G.jokers.cards[i+1], 'extra', nil, nil, nil, {message = localize('toga_userlocked'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_mscmenucmd'})
						elseif G.jokers.cards[i+1] and G.jokers.cards[i+1].ability.eternal then
							G.jokers.cards[i+1]:set_eternal(false)
							G.jokers.cards[i+1].ability.eternal = false
							card_eval_status_text(G.jokers.cards[i+1], 'extra', nil, nil, nil, {message = localize('toga_userunlocked'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_mscmenucmd'})
						end
					end
				end
			end
		end
	end,
	update = function(self, card, context)
		if card.ability.eternal then card:set_eternal(false); card.ability.eternal = false end
	end
}

SMODS.Joker{
	key = 'virtualpc',
	config = { extra = { odds = 25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 4 },
	cost = 20,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if card.ability.cry_rigged or G.GAME.probabilities.normal >= 1e9 then return end -- No rigging my gaming rig!
		
		if context.blueprint then return end
		
		if pseudorandom("virtualpc2004sp1") < G.GAME.probabilities.normal/card.ability.extra.odds then
			-- Larswijn was here.
			local returns = nil
			for i = 1, #G.jokers.cards do
				local other_joker = G.jokers.cards[i]
				if other_joker and other_joker:can_calculate() and other_joker.config.center.key ~= self.key then
					local other_joker_effect = SMODS.blueprint_effect(card, other_joker, context)
					if other_joker_effect and not other_joker_effect.was_blueprinted then
						other_joker_effect.was_blueprinted = true
						if context.repetition then
							returns = returns or {}
							returns.repetitions = (returns.repetitions or 0) + other_joker_effect.repetitions
						else
							if not returns then
								returns = other_joker_effect
							else
								local index = returns
								while index.extra do
									index = index.extra
								end
								index.extra = other_joker_effect
							end
						end
					end
				end
			end
			if context.repetition and not context.repetition_only and context.other_card then
				local total_repetitions = type(card.ability.extra) == 'number' and card.ability.extra + (returns and returns.repetitions or 0) or 0
				if total_repetitions > 0 then
					return {
						message = localize("k_again_ex"),
						repetitions = total_repetitions,
						card = context.blueprint_card or card,
						was_blueprinted = true,
					}
				end
			end
			if returns then
				return returns
			end
		end
	end,
	update = function(self, card, context)
		if card.ability.cry_rigged then card.ability.cry_rigged = nil end -- No rigging my gaming rig!
	end
}

togabalatro.modifylevelchipsmult = function(card, hand, instant, lchips, lmult)
	lchips, lmult = lchips or 0, lmult or 0
	if not (instant or Talisman and Talisman.config_file.disable_anims) then
		--update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('toga_perlevel').." "..localize(hand, 'poker_hands'),chips = to_number(to_big(G.GAME.hands[hand].l_chips) - to_big(lchips)), mult = to_number(to_big(G.GAME.hands[hand].l_mult) - to_big(lmult)), level=''})
		update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('toga_perlevel').." "..localize(hand, 'poker_hands'),chips = to_number(G.GAME.hands[hand].l_chips), mult = to_number(G.GAME.hands[hand].l_mult), level=''})
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
			play_sound('tarot1')
			if card then card:juice_up(0.8, 0.5) end
			G.TAROT_INTERRUPT_PULSE = true
			return true end }))
		update_hand_text({delay = 0}, {mult = to_number(to_big(G.GAME.hands[hand].l_mult) + to_big(lmult)), StatusText = true})
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
			play_sound('tarot1')
			if card then card:juice_up(0.8, 0.5) end
			return true end }))
		update_hand_text({delay = 0}, {chips = to_number(to_big(G.GAME.hands[hand].l_chips) + to_big(lchips)), StatusText = true})
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
			play_sound('tarot1')
			if card then card:juice_up(0.8, 0.5) end
			G.TAROT_INTERRUPT_PULSE = nil
			return true end }))
		delay(1.3)
		update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0}, {handname='',chips = 0, mult = 0, level=''})
	end
	
	if Talisman and Talisman.config_file.disable_anims then
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
			play_sound('tarot1')
		return true end }))
	end
	
	G.GAME.hands[hand].l_chips = to_big(G.GAME.hands[hand].l_chips) + to_big(lchips)
	G.GAME.hands[hand].l_mult = to_big(G.GAME.hands[hand].l_mult) + to_big(lmult)
	G.GAME.hands[hand].mult = math.max(to_big(G.GAME.hands[hand].s_mult) + to_big(G.GAME.hands[hand].l_mult)*(to_big(G.GAME.hands[hand].level) - to_big(1)), to_big(1))
	G.GAME.hands[hand].chips = math.max(to_big(G.GAME.hands[hand].s_chips) + to_big(G.GAME.hands[hand].l_chips)*(to_big(G.GAME.hands[hand].level) - to_big(1)), to_big(0))
end

SMODS.Joker{
	key = 'ie',
	config = { extra = { phchips = 5, phmult = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { 100/card.ability.extra.phchips, 100/card.ability.extra.phmult } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 4 },
	cost = 7,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.ending_shop then
			return {
				func = function()
					local names = {}
					for k, v in ipairs(G.handlist) do
						if G.GAME.hands[v] then names[#names+1] = v end
					end
					local hand = pseudorandom_element(names, pseudoseed('ie'))
					togabalatro.modifylevelchipsmult(context.blueprint_card or card, hand, false, to_number(G.GAME.hands[hand].s_chips)/card.ability.extra.phchips, to_number(G.GAME.hands[hand].s_mult)/card.ability.extra.phmult)
				end
			}
		end
	end
}

SMODS.Joker{
	key = 'systemrestore',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersMain',
	pos = { x = 0, y = 4 },
	cost = 12,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.remove_playing_cards then
			local addedcards = {}
			for i = 1, #context.removed do
				if togabalatro.config.DoMoreLogging then sendInfoMessage(context.removed[i].base.id, "TOGAPack") end
				local _card = copy_card(context.removed[1], nil, nil, G.playing_card)
				_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				table.insert(G.playing_cards, _card)
				G.deck:emplace(_card)
				table.insert(addedcards, _card)
			end
			playing_card_joker_effects(addedcards)
			return { message = localize('toga_systemrestore1') }
		end
	end
}

local function toga_randomruntext()
	local stringtable = { localize('toga_jimbo95txt1'), localize('k_again_ex'), localize('toga_jimbo95txt2'), localize('toga_jimbo95txt3'), localize('toga_jimbo95txt4') }
	return stringtable[math.random(#stringtable)]
end

SMODS.Joker{
	key = 'jimbo95',
	config = { extra = { h_size = 2, retriggers = 1, x_chips = 1.5, x_mult = 1.5} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.h_size, card.ability.extra.retriggers, card.ability.extra.x_chips, card.ability.extra.x_mult } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 4, y = 0 },
	cost = 25,
	blueprint_compat = true,
	perishable_compat = false,
	add_to_deck = function(self, card, from_debuff)
		G.hand:change_size(card.ability.extra.h_size)
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(-card.ability.extra.h_size)
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if card.ability.extra.x_chips < 1 then card.ability.extra.x_chips = 1 end -- no reduce.
			if card.ability.extra.x_mult < 1 then card.ability.extra.x_mult = 1 end -- only extend.

			return {
				x_chips = card.ability.extra.x_chips > 1 and card.ability.extra.x_chips or nil,
				xchip_message = card.ability.extra.x_chips > 1 and {message = localize{ type = "variable", key = "a_xchips", vars = { card.ability.extra.x_chips } }, colour = G.C.CHIPS, sound = "xchips"} or nil,
				x_mult = card.ability.extra.x_mult > 1 and card.ability.extra.x_mult or nil
			}
		end
		if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= card and context.other_card.config.center.key ~= 'j_toga_jimbo95' then
			if card.ability.extra.retriggers < 1 then card.ability.extra.retriggers = 1 end -- always at least once.
			return {
				message = toga_randomruntext(),
				repetitions = card.ability.extra.retriggers,
				card = context.blueprint_card or card,
			}
		end
	end,
	update = function(self, card)
		if card.ability.extra.x_chips < 1 then card.ability.extra.x_chips = 1 end -- no reduce.
		if card.ability.extra.x_mult < 1 then card.ability.extra.x_mult = 1 end -- only extend.
		if card.ability.extra.retriggers < 1 then card.ability.extra.retriggers = 1 end -- always at least once.
	end
}

SMODS.Joker{
	key = 'win95',
	config = { extra = { hands = 1, discards = 1, money = 4, Xmoney = 2, slots = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hands, card.ability.extra.discards, card.ability.extra.money, card.ability.extra.Xmoney, card.ability.extra.slots } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 0 },
	cost = 7,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
			ease_hands_played(card.ability.extra.hands)
			ease_discard(card.ability.extra.discards)
			return { message = localize('toga_32bits') }
		end
	end,
	calc_dollar_bonus = function(self, card)
		if card.ability.extra.money > 0 then
			if #G.jokers.cards <= card.ability.extra.slots then
				return card.ability.extra.money * card.ability.extra.Xmoney
			else
				return card.ability.extra.money
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_win95start")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_win95tada")
			else play_sound("toga_chordold") end
		end
	end
}

local function toga_gettotaljokervalue()
	local value = 0
	if G.jokers then
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i].ability.set == 'Joker' then
				value = value + G.jokers.cards[i].sell_cost
			end
		end
	end
	return value
end

SMODS.Joker{
	key = 'win98',
	config = { extra = { consslotbonus = 0.1, totalconsslotbonus = 0, percentage = 0.125 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.consslotbonus*100, card.ability.extra.totalconsslotbonus*100, card.ability.extra.percentage*100, toga_gettotaljokervalue()*card.ability.extra.percentage } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 0 },
	cost = 5,
	blueprint_compat = true,
	calculate = function(self, card, context)
		--if context.joker_main then
		if context.individual and context.cardarea == G.play then
			local sellvalues = toga_gettotaljokervalue()*card.ability.extra.percentage
			local slotbonus = sellvalues*#G.consumeables.cards*card.ability.extra.consslotbonus or 0
			return {
				mult = sellvalues + slotbonus
			}
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_win98start")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_win98tada")
			else play_sound("toga_chord") end
		end
	end,
	update = function(self, card, context)
		card.ability.extra.totalconsslotbonus = G.consumeables and #G.consumeables.cards*card.ability.extra.consslotbonus or 0
	end
}

local function toga_vouchcount()
	local vouchercount = 0
	for i, v in pairs(G.GAME.used_vouchers) do
		if v == true then vouchercount = vouchercount + 1 end
	end
	return vouchercount
end

SMODS.Joker{
	key = 'winmillenium',
	config = { extra = { basechips = 25, chipbonus = 25, totalbonus = 25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.basechips, card.ability.extra.chipbonus, card.ability.extra.totalbonus } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 0 },
	cost = 6,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.basechips*toga_vouchcount()
		
		if context.other_joker then
			return { chips = card.ability.extra.totalbonus }
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winme2000start")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winme2000shutdown")
			else play_sound("toga_chord") end
		end
	end,
	update = function(self, card, context)
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.basechips*toga_vouchcount()
	end
}

SMODS.Joker{
	key = 'winnt4',
	config = { extra = { repetitions = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { math.floor(card.ability.extra.repetitions) } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 1 },
	cost = 10,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if not context.other_card:is_face() then
				-- This is basically the inverse of Sock and Buskin...
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = context.blueprint_card or card
				}
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winnt4start")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winnt4shutdown")
			else play_sound("toga_chordold") end
		end
	end
}

SMODS.Joker{
	key = 'win2000',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 1 },
	cost = 10,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.end_of_round and not (context.individual or context.repetition) then
			G.E_MANAGER:add_event(Event({
				func = (function()
					local gettag = get_next_tag_key()
					if gettag == 'tag_orbital' then gettag = 'tag_negative' end
					add_tag(Tag(gettag))
					card:juice_up(0.3, 0.4)
					play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
					play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
					return true
				end)
			}))
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winme2000start")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winme2000shutdown")
			else play_sound("toga_chord") end
		end
	end
}

SMODS.Joker{
	key = 'winxp',
	config = { extra = { repetitions = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { math.floor(card.ability.extra.repetitions) } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 1 },
	cost = 20,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if card.ability.extra.repetitions < 1 then card.ability.extra.repetitions = 1 end -- always at least once.
		
		if (context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= card and context.other_card.config and context.other_card.config.center.key ~= 'j_toga_winxp')
		or ((context.cardarea == G.play or context.cardarea == G.hand) and context.repetition and not context.repetition_only) then
			return {
				message = localize('k_again_ex'),
				repetitions = card.ability.extra.repetitions,
				card = context.blueprint_card or card,
			}
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winxplogon")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winxplogoff")
			else play_sound("toga_winxpcritstop") end
		end
	end
}

-- Random SFX.
local function toga_plus95rndsfx()
	return 'toga_win95pluscmd'..math.random(1, 12)
end

SMODS.Joker{
	key = 'drivespace',
	config = { extra = { reduce = 0.97 }, bypasswu = true },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.reduce } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 1 },
	cost = 25,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if card.ability.extra.reduce > 1 then card.ability.extra.reduce = 1 end -- catch.
		
		if context.cardarea == G.play then
			if context.other_card and not context.before and not context.after and not context.repetition and not context.repetition_only and to_big(G.GAME.blind.chips) > to_big(0) then
				if Talisman and Talisman.config_file.disable_anims then
					G.GAME.blind.chips = math.floor(G.GAME.blind.chips*card.ability.extra.reduce)
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
					G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
					G.HUD_blind:recalculate()
				else
					G.E_MANAGER:add_event(Event({func = function()
						G.GAME.blind.chips = math.floor(G.GAME.blind.chips*card.ability.extra.reduce)
						G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
						G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
						G.HUD_blind:recalculate()
						G.hand_text_area.blind_chips:juice_up()
						card:juice_up()
		
						if not silent and togabalatro.config.SFXWhenTriggered then play_sound(toga_plus95rndsfx()) end
					return true end }))
				end
			end
		end
	end,
	update = function(self, card, context)
		if card.ability.extra.reduce > 1 then card.ability.extra.reduce = 1 end -- catch.
	end
}

SMODS.Joker{
	key = 'clippit',
	config = { extra = { repetitions = 3 } },
	loc_vars = function(self, info_queue, card)
		if self.discovered then
			info_queue[#info_queue + 1] = {key = "toga_clippyorigin", set = 'Other'}
		end
		return { vars = { math.floor(card.ability.extra.repetitions) } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 2 },
	soul_pos = { x = 4, y = 2 },
	cost = 25,
	blueprint_compat = true,
	calculate = function(self, card, context)
		local repeats = card.ability.extra.repetitions
		if context.cardarea == G.hand and context.repetition then
			return {
				message = localize('k_again_ex'),
				repetitions = repeats,
				sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_officehammer",
				card = context.blueprint_card or card
			}
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_o97doorbell")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_o97glide")
		end
	end,
}

SMODS.Joker{
	key = 'rover',
	config = { extra = { odds = 8, curstate = "shop" }, bypasswu = true },
	loc_vars = function(self, info_queue, card)
		return { vars = { G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokerRover',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 15,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main then
			for i = 1, #G.deck.cards do
				if pseudorandom("toga_rover") < G.GAME.probabilities.normal/card.ability.extra.odds then
					SMODS.score_card(G.deck.cards[i], {cardarea = G.play, full_hand = context.full_hand, scoring_hand = context.scoring_hand, scoring_name = context.scoring_name, poker_hands = context.poker_hands})
				end
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.animated = true
	end,
	remove_from_deck = function(self, card, from_debuff)
		card.ability.extra.animated = nil
	end,
	update = function(self, card)
		if not card.ability.extra.animated then return end
		
		if G.STATE == G.STATES.GAME_OVER then
			card.ability.extra.curstate = "loss"
			card.children.floating_sprite:set_sprite_pos({x = 7, y = 0})
		elseif G.GAME.won and G.OVERLAY_MENU and G.OVERLAY_MENU.config.no_esc then
			card.ability.extra.curstate = "win"
			card.children.floating_sprite:set_sprite_pos({x = 4, y = 0})
		elseif G.shop then
			card.ability.extra.curstate = "shop"
			card.children.floating_sprite:set_sprite_pos({x = 3, y = 0})
		elseif G.round_eval then
			card.ability.extra.curstate = "roundeval"
			card.children.floating_sprite:set_sprite_pos({x = 2, y = 0})
		elseif G.booster_pack then
			card.ability.extra.curstate = "booster"
			card.children.floating_sprite:set_sprite_pos({x = 3, y = 0})
		elseif G.blind_select then
			card.ability.extra.curstate = "blindselect"
			card.children.floating_sprite:set_sprite_pos({x = 5, y = 0})
		elseif G.GAME.blind then
			card.ability.extra.curstate = "inblind"
			if G.GAME.blind.boss then
				card.children.floating_sprite:set_sprite_pos({x = 6, y = 0})
			else
				card.children.floating_sprite:set_sprite_pos({x = 1, y = 0})
			end
		else -- Just so we don't crash.
			card.ability.extra.curstate = "fallback"
			card.children.floating_sprite:set_sprite_pos({x = 1, y = 0})
		end
	end
}

SMODS.Joker{
	key = 'solitairejoker',
	config = { extra = { h_size = 3, chips = 100, hands = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.h_size, card.ability.extra.chips, card.ability.extra.hands } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 0 },
	cost = 8,
	blueprint_compat = true,
	add_to_deck = function(self, card, from_debuff)
		G.hand:change_size(card.ability.extra.h_size)
		G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(-card.ability.extra.h_size)
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
	end,
	calculate = function(self, card, context)
		if context.joker_main then return { chips = card.ability.extra.chips } end
	end
}

local function toga_checkxmultsafe(card)
	local xmultcheck = card.ability.extra.Xmult_current / card.ability.extra.shortcutfailmult
	if xmultcheck < 1 then return false else return true end
end

SMODS.Joker{
	key = 'jokersrb2kart',
	config = { extra = { Xmult_current = 1, add_shop = 0.04, addshortcut = 0.75, shortcutfailmult = 1.33, maxchance = 3, toexactchance = 1} },
	loc_vars = function(self, info_queue, card)
		if self.discovered then
			info_queue[#info_queue + 1] = {key = "toga_kartjokerlist", set = 'Other', vars = { card.ability.extra.add_shop, card.ability.extra.add_shop*5 } }
			if G.GAME.selected_back.effect.center.key == 'b_toga_srb2kartdeck' then info_queue[#info_queue + 1] = {key = "toga_kartjokershortcutspecial", set = 'Other', vars = { card.ability.extra.addshortcut/2.5 } }
			else
				info_queue[#info_queue + 1] = {key = "toga_kartjokershortcut", set = 'Other', vars =
					{ (G.GAME.probabilities.normal or 1) * card.ability.extra.toexactchance, card.ability.extra.maxchance,
					card.ability.extra.addshortcut, math.abs((1-card.ability.extra.shortcutfailmult)*100) }
				}
			end
		end
		return { vars = { card.ability.extra.Xmult_current } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 1, y = 0 },
	cost = 10,
	blueprint_compat = true,
	perishable_compat = false,
	calculate = function(self, card, context)
		if not card then return end
		if card.ability.extra.eliminated or card.debuff then return end
		
		if card.ability.extra.Xmult_current < 1 and not card.debuff then -- Catch.
			play_sound('tarot1')
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_karteliminated'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_ssb64crowdohh'})
			card.ability.extra.Xmult_current = 0
			card.ability.extra.eliminated = true
			SMODS.debuff_card(card, true, card)
			return true
		end
		
		if (context.buying_card or context.selling_card or context.playing_card_added or context.ending_shop or context.using_consumeable or context.open_booster or context.reroll_shop or context.ending_shop)
		and not context.individual and not context.blueprint then
			card.ability.extra.Xmult_current = card.ability.extra.Xmult_current + (context.ending_shop and card.ability.extra.add_shop*5 or context.playing_card_added and context.cards and #context.cards and card.ability.extra.add_shop*#context.cards or card.ability.extra.add_shop)
			G.E_MANAGER:add_event(Event({func = function()
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')});
				return true
			end}))
		elseif (context.skip_blind or context.skipping_booster) and not context.blueprint then
			if pseudorandom('j_toga_jokersrb2kart') > (G.GAME.probabilities.normal * card.ability.extra.toexactchance) / card.ability.extra.maxchance and G.GAME.selected_back.effect.center.key ~= 'b_toga_srb2kartdeck' then
				if not toga_checkxmultsafe(card) then
					-- Eliminated!
					card.ability.extra.Xmult_current = 0
					card.ability.extra.eliminated = true
					SMODS.debuff_card(card, true, card)
					return {message = localize('toga_karteliminated'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_ssb64crowdohh'}
				else
					card.ability.extra.Xmult_current = card.ability.extra.Xmult_current / card.ability.extra.shortcutfailmult
					return {message = localize('toga_kartouch'), colour = G.C.RED}
				end
			else
				local shortcutbonus = G.GAME.selected_back.effect.center.key == 'b_toga_srb2kartdeck' and card.ability.extra.addshortcut/2.5 or card.ability.extra.addshortcut
				card.ability.extra.Xmult_current = card.ability.extra.Xmult_current + shortcutbonus
				return {message = localize('k_upgrade_ex')}
			end
		elseif context.joker_main then
			if card.ability.extra.Xmult_current > 1 then return { x_mult = card.ability.extra.Xmult_current } end
		end
	end,
}

SMODS.Joker{
	key = 'asterism',
	config = { extra = { curmult = 0, bonusmult = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.curmult > 0 and card.ability.extra.curmult or (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.planet or 0) * card.ability.extra.bonusmult, card.ability.extra.bonusmult } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 1 },
	cost = 6,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.ability.extra.curmult = (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.planet or 0) * card.ability.extra.bonusmult
		
		if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = { card.ability.extra.curmult } } })
		end
		
		if context.joker_main and card.ability.extra.curmult > 0 then return { mult = card.ability.extra.curmult } end
	end
}

SMODS.Joker{
	key = 'bonusducks',
	unlocked = true,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_bonushat
	end,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 1, y = 1 },
	cost = 7,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.blueprint then return end
		
		if context.cardarea == G.jokers and context.before then
			local faces = {}
			for k, v in ipairs(context.scoring_hand) do
				if v:is_face() then 
					faces[#faces+1] = v
					v:set_ability(G.P_CENTERS.m_bonus, nil, true)
					G.E_MANAGER:add_event(Event({
						func = function()
							v:juice_up()
							return true
						end
					})) 
				end
			end
			if #faces > 0 then
				return {
					message = localize('toga_bonusapply'),
					colour = G.C.CHIPS,
					card = card,
					sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_duck',
					pitch = not silent and togabalatro.config.SFXWhenTriggered and togabalatro.randompitch()
				}
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_duck")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_kcud")
		end
	end,
}

-- Count steel card amount in full deck and round down the returned result.
-- ...and also prevent recursion. (thanks, nnmrts!)
local steelprocess = false
local function toga_gettotalsteelcount()
	if steelprocess then return 0 end
	local allsteel = 0
	steelprocess = true
	if G.playing_cards then
		for k, v in pairs(G.playing_cards) do
			if SMODS.has_enhancement(v, "m_steel") then allsteel = allsteel+1 end
		end
	end
	steelprocess = false
	return math.floor(allsteel/4)
end

-- Update variable for Anvil.
local function toga_updatesteelrepeat(target)
	return toga_gettotalsteelcount()*target.ability.extra.repetitions
end

SMODS.Joker{
	key = 'mcanvil',
	config = { extra = { repetitions = 1, totalrepetitions = 0 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_steel
		return { vars = { math.floor(card.ability.extra.repetitions), toga_updatesteelrepeat(card) } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 2, y = 1 },
	soul_pos = { x = 4, y = 1 },
	cost = 10,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.ability.extra.totalrepetitions = card.ability.extra.repetitions*toga_gettotalsteelcount() or 0
		if context.cardarea == G.play and context.repetition and not context.repetition_only and card.ability.extra.totalrepetitions >= 1 then
			return {
				message = localize('toga_anviltrigger'),
				repetitions = math.floor(card.ability.extra.totalrepetitions),
				card = context.blueprint_card or card,
				sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_anviluse',
				pitch = not silent and togabalatro.config.SFXWhenTriggered and togabalatro.randompitch()
			}
		end
	end,
	update = function(self, card)
		card.ability.extra.totalrepetitions = card.ability.extra.repetitions*toga_gettotalsteelcount() or 0
	end
}

-- Get repeats, up to 65536. Will use Talisman functions if present.
local function toga_cashpointmulitple(cashpoint)
	local getmultiples = to_big(G.GAME.dollars)/to_big(cashpoint)
	if Talisman then getmultiples = getmultiples:to_number() end
	return math.min(math.floor(getmultiples), 65535) + 1
end

SMODS.Joker{
	key = 'spacecadetpinball',
	config = { extra = { cashpoint = 20, alltrig = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.cashpoint, card.ability.extra.alltrig-1, (G.GAME and G.GAME.probabilities.normal or 1) } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 2 },
	cost = 15,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main then
			card.ability.extra.alltrig = toga_cashpointmulitple(card.ability.extra.cashpoint) or 1
			for i = 1, card.ability.extra.alltrig do
				if pseudorandom("toga_spacecadetpinball") < G.GAME.probabilities.normal/3 then -- hard cap.
					SMODS.score_card(pseudorandom_element(context.scoring_hand, pseudoseed('spacecadet')), {cardarea = G.play, full_hand = context.full_hand, scoring_hand = context.scoring_hand, scoring_name = context.scoring_name, poker_hands = context.poker_hands})
				end
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_pinballstart")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_pinballloseball")
		end
	end,
	update = function(self, card, context)
		card.ability.extra.alltrig = toga_cashpointmulitple(card.ability.extra.cashpoint) + 1 or 1
	end
}

SMODS.Joker{
	key = 'heartyspades',
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOtherDiffSize',
	pos = { x = 0, y = 0 },
	cost = 6,
	blueprint_compat = false,
	pixel_size = { w = 69, h = 74 }
}

SMODS.Joker{
	key = 'binaryjkr',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 3 },
	cost = 8,
	blueprint_compat = false
}

SMODS.Joker{
	key = 'hexadecimaljkr',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 1, y = 3 },
	cost = 8,
	blueprint_compat = false
}

SMODS.Joker{
	key = 'y2ksticker',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOtherDiffSize',
	pos = { x = 2, y = 0 },
	cost = 7,
	blueprint_compat = false,
	pixel_size = { w = 69, h = 38 }
}

SMODS.Joker{
	key = 'pso2ironwill',
	config = { extra = { skillactive = true, skillactivetext = localize('toga_pso2ironwillready') or "Ready!" } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.skillactive, card.ability.extra.skillactivetext } }
	end,
	unlocked = true,
	rarity = 4,
	in_pool = function()
		if #SMODS.find_card('j_toga_pso2ironwill', true) > 0 then return false
		else return true end
	end,
	atlas = 'TOGAJokersOther',
	pos = { x = 4, y = 2 },
	cost = 30,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if card.ability.extra.skillactive and context.end_of_round and context.game_over and not context.repetition and not context.individual and to_big(G.GAME.dollars) > to_big(0) then
			card.ability.extra.skillactive = false
			card.ability.extra.skillactivetext = localize('toga_pso2ironwillrecharge')
			G.GAME.current_round.usesavedtext = true
			G.GAME.current_round.savedtext = localize('toga_pso2ironwillsave')
			ease_dollars(to_big(-G.GAME.dollars), true)
			return {
				message = localize('toga_pso2ironwillproc'),
				saved = true,
				colour = G.C.RED
			}
		end
		
		if context.end_of_round and not (context.individual or context.repetition or context.blueprint) and G.GAME.blind.boss and not card.ability.extra.skillactive then
			card.ability.extra.skillactive = true
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_pso2ironwillready')})
		end
	end,
	update = function(self, card)
		if card.ability.extra.skillactive == true then card.ability.extra.skillactivetext = localize('toga_pso2ironwillready')
		else card.ability.extra.skillactivetext = localize('toga_pso2ironwillrecharge') end
	end
}

local function toga_jimbopluscalc(card)
	local totalxmult = 1
	
	if G.jokers and G.jokers.cards then
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] and G.jokers.cards[i] ~= card then
				if G.jokers.cards[i].config.center.key == 'j_joker' then totalxmult = totalxmult + card.ability.extra.jimboxmult
				elseif G.jokers.cards[i].config.center.key ~= 'j_toga_jimboplus' then totalxmult = totalxmult + card.ability.extra.otherxmult end
			end
		end
	end
	
	return math.max(totalxmult, 1)
end

SMODS.Joker{
	key = 'jimboplus',
	config = { extra = { jimboxmult = 0.25, otherxmult = 0.05 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.jimboxmult, card.ability.extra.otherxmult, toga_jimbopluscalc(card) } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 1, y = 2 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local xval = toga_jimbopluscalc(card) or 1
			return { xmult = xval > 1 and xval }
		end
		
		if context.end_of_round and not (context.individual or context.repetition or context.blueprint) and togabalatro.config.SFXWhenTriggered and not silent then
			return { message = localize('toga_jimbo'), sound = "voice"..math.random(1, 11), pitch = togabalatro.randompitch() }
		end
	end
}

local function toga_gethowmuch(div, inputxmult)
	local dol, dolbuffer = G.GAME.dollars, G.GAME.dollar_buffer and G.GAME.dollar_buffer > 0 and G.GAME.dollar_buffer or 0
	local amount = to_big(dol) + to_big(dolbuffer)
	return math.floor(to_big(amount)/to_big(div))
end

SMODS.Joker{
	key = 'speedsneakers',
	config = { extra = { xmultpart = 0.1, dollars = 5 } },
	loc_vars = function(self, info_queue, card)
		local total = toga_gethowmuch(card.ability.extra.dollars, card.ability.extra.xmultpart)*card.ability.extra.xmultpart
		return { vars = { card.ability.extra.xmultpart, card.ability.extra.dollars, to_big(1)+to_big(total) > to_big(1) and to_big(1)+to_big(total) or to_big(1) } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOtherDiffSize',
	pos = { x = 1, y = 0 },
	cost = 5,
	blueprint_compat = true,
	pixel_size = { w = 69, h = 74 },
	calculate = function(self, card, context)
		if context.joker_main then
			local total = toga_gethowmuch(card.ability.extra.dollars, card.ability.extra.xmultpart)*card.ability.extra.xmultpart
			return { xmult = to_big(1)+to_big(total) > to_big(1) and to_big(1)+to_big(total) or to_big(1) }
		end
	end
}

SMODS.Joker{
	key = 'megasxlr',
	config = { extra = { xmult = 1.88 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 4 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and (context.cardarea == G.deck or context.cardarea == G.discard) and context.other_card:get_id() == 8
		and not context.other_card.debuff and not context.end_of_round then
			return { xmult = card.ability.extra.xmult }
		end
	end
}

SMODS.Joker{
	key = 'jarate',
	config = { extra = { minicrit = 0.65, used = false }},
	loc_vars = function(self, info_queue, card)
		return { vars = { 100*card.ability.extra.minicrit - 100, card.ability.extra.used and localize('toga_jaraterecharging') or localize('toga_jarateready') } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersOtherDiffSize',
	pos = { x = 3, y = 0 },
	cost = 5,
	blueprint_compat = false,
	pixel_size = { w = 69, h = 73 },
	calculate = function(self, card, context)
		if context.blueprint then return end
		
		if context.setting_blind and G.GAME.blind.boss and not G.GAME.blind.jarated and not card.getting_sliced and not card.ability.extra.used then
			G.GAME.blind.jarated, card.ability.extra.used = true, true
			G.E_MANAGER:add_event(Event({func = function()
				G.GAME.blind.chips = math.floor(G.GAME.blind.chips*card.ability.extra.minicrit)
				G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
				G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
				G.HUD_blind:recalculate()
				G.hand_text_area.blind_chips:juice_up()
				card:juice_up()
				if not silent and togabalatro.config.SFXWhenTriggered then play_sound('toga_jaratehit') end
			return true end }))
		end
		
		if context.cardarea == G.jokers and context.before then
			for k, v in ipairs(context.scoring_hand) do
				v.jarated = true
				v:set_edition()
				v:set_seal()
				v:set_ability(G.P_CENTERS.c_base, nil, true)
				G.E_MANAGER:add_event(Event({
					func = function()
						v:juice_up()
						v.jarated = nil
						return true
					end
				}))
			end
			return {
				message = localize('toga_jarated'),
				colour = G.C.RED,
				card = card
			}
		end
		
		if context.starting_shop then
			if card.ability.extra.used then card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_jaraterestocked')}) end
			card.ability.extra.used = false
			local eval = function() return not (G.GAME.blind and G.GAME.blind.boss and G.GAME.blind.jarated) end
			juice_card_until(card, eval, true)
		end
	end
}

SMODS.Joker{
	key = 'goldenwrench',
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOtherDiffSize',
	pos = { x = 4, y = 0 },
	cost = 2,
	blueprint_compat = false,
	pixel_size = { w = 69, h = 87 },
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and G.STAGE == G.STAGES.RUN and not G.screenwipe and card.getting_sliced then
			G.E_MANAGER:add_event(Event({
				func = function()
					for i = 1, #G.playing_cards do
						G.playing_cards[i]:set_ability(G.P.CENTERS.m_gold)
						G.E_MANAGER:add_event(Event({
							func = function()
								G.playing_cards[i]:juice_up()
								return true
							end
						}))
					end
					if togabalatro.config.SFXWhenTriggered and not silent then play_sound('toga_goldenhit', 1, 0.7) end -- insert sound here.
					return true
				end
			}))
		end
	end,
}

local function toga_subtable(ttable, found, increase, depthiter)
	depthiter = depthiter or 1
	if depthiter > 32 then return end -- Just in case.
	for k, v in pairs(ttable) do
		if type(v) == 'number' then
			local rplc = v*(1+increase)
			ttable[k] = rplc
			foundmodified = true
		elseif type(v) == 'table' then
			toga_subtable(v, found, increase, depthiter) -- This is a bit dangerous...
		end
	end
end

-- Most Jokers (should) use card.ability.extra anyway...
local function toga_rndvaluetarget(origcard, increase, curiter)
	curiter = curiter or 1
	if togabalatro.config.DoMoreLogging then sendInfoMessage("Joker Update - "..curiter.." out of 32", "TOGAPack") end
	
	-- Find random joker that is not one of ourselves.
	local selectedjoker = pseudorandom_element(G.jokers.cards, pseudoseed('j_toga_update'))
	if #G.jokers.cards > 1 then
		while selectedjoker.config.center.key == 'j_toga_winupdate' or selectedjoker.ability.bypasswu or selectedjoker.ability.immutable do
			selectedjoker = pseudorandom_element(G.jokers.cards, pseudoseed('j_toga_update'))
		end
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Joker Update - "..tostring(selectedjoker.config.center.key), "TOGAPack") end
	else selectedjoker = nil; return false end
	
	local foundmodified = false
	if type(selectedjoker.ability.extra) == 'number' then
		local rplc = selectedjoker.ability.extra+(selectedjoker.ability.extra*increase)
		selectedjoker.ability.extra = rplc
		foundmodified = true
	elseif type(selectedjoker.ability.extra) == 'table' then
		for k, v in pairs(selectedjoker.ability.extra) do
			if type(v) == 'number' then
				local rplc = v*(1+increase)
				selectedjoker.ability.extra[k] = rplc
				foundmodified = true
			elseif type(v) == 'table' then
				toga_subtable(v, foundmodified, increase) -- This is a bit dangerous...
			end
		end
	end
	if foundmodified then
		origcard.ability.extra.active = localize('toga_inactive')
		origcard.ability.extra.canupgrade = false
		origcard:juice_up()
		card_eval_status_text(selectedjoker, 'extra', nil, nil, nil, {message = localize('toga_updated')})
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Joker Update - "..tostring(selectedjoker.config.center.key).." successfully altered.", "TOGAPack") end
		return true
	else
		if curiter < 32 then -- try again
			curiter = curiter + 1
			toga_rndvaluetarget(origcard, increase, curiter)
		else
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Joker Update - Exceeded search attempts or could not find eligible Joker, aborting...", "TOGAPack") end
			return false
		end
	end
end
local winupdateframes = {0, 1, 2, 3, 4, 5, 5, 4, 3, 2, 1}

SMODS.Joker{
	key = 'winupdate',
	config = { extra = { plusval = 0.25 }, },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.plusval*100, card.ability.extra.active } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersUpdate',
	pos = { x = 0, y = 0 },
	cost = 25,
	blueprint_compat = true,
	perishable_compat = false,
	calculate = function(self, card, context)
		if context.end_of_round and not context.repetition and not context.individual and G.GAME.blind.boss then
			toga_rndvaluetarget(card, card.ability.extra.plusval)
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.animated = true
	end,
	remove_from_deck = function(self, card, from_debuff)
		card.ability.extra.animated = nil
	end,
	update = function(self, card, context)
		if not card.ability.extra.animated then return end
		if G.jokers and G.jokers.config and G.jokers.config.card_limit < 0 then G.jokers.config.card_limit = 1 end -- Just in case.
		local timer = (G.TIMERS.REAL * 4) 
		local frame_amount = #winupdateframes
		local wrapped_value = (math.floor(timer) - 1) % frame_amount + 1
		card.children.center:set_sprite_pos({x = winupdateframes[wrapped_value], y = 0})
	end,
}

local function toga_calccopiesofself(jkey)
	local count = #SMODS.find_card(jkey)
	return count or 0
end

-- I am currently in a video game where I give XMult for every copy of me held.
SMODS.Joker{
	key = 'tomscott',
	config = { extra = { basexmult = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.basexmult, card.ability.extra.basexmult ^ toga_calccopiesofself(card.config.center.key) } }
	end,
	unlocked = true,
	in_pool = function()
		return togabalatro.config.JokeJokersActive -- Should only spawn if allowed to via config!
	end,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 2, y = 2 },
	cost = 5,
	blueprint_compat = true,
	calculate = function(self, card, context)
		local curxmult = card.ability.extra.basexmult ^ toga_calccopiesofself(card.config.center.key)
		if context.joker_main then
			return { xmult = curxmult }
		end
	end,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge("Joke (TOGA)", G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1 )
	end
}

-- The plumtastic man himself. Joke Joker.
SMODS.Joker{
	key = 'michaelrosen',
	config = { extra = { heldmoney = 10, heldxchip = 1.75, heldxmult = 2, heldechip = 1.3, heldeechip = 1.1, heldeeechip = 1.05, heldemult = 1.2, heldeemult = 1.08, heldeeemult = 1.04, odds = 25 } },
	loc_vars = function(self, info_queue, card)
		if not card.debuff then
			info_queue[#info_queue + 1] = {key = "toga_roseneffects", set = 'Other', vars = { card.ability.extra.heldmoney, card.ability.extra.heldxchip, card.ability.extra.heldxmult }}
			if Talisman then
				info_queue[#info_queue + 1] = {key = "toga_rosentalismanextra", set = 'Other', vars = {
					card.ability.extra.heldechip, card.ability.extra.heldeechip, card.ability.extra.heldeeechip, card.ability.extra.heldemult, card.ability.extra.heldeemult, card.ability.extra.heldeeemult
				}}
			end
		end
		return { vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
	end,
	unlocked = true,
	in_pool = function()
		return togabalatro.config.JokeJokersActive -- Should only spawn if allowed to via config!
	end,
	rarity = 4,
	atlas = 'TOGAJokersOther',
	pos = { x = 2, y = 3 },
	soul_pos = { x = 4, y = 3 },
	cost = 33,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.hand and context.other_card and not context.other_card.debuff and not context.repetition and not context.repetition_only and not context.end_of_round then
			-- Dear god.
			return {
				dollars = pseudorandom("michaelrosen_money") < G.GAME.probabilities.normal/card.ability.extra.odds and card.ability.extra.heldmoney or nil,
				x_chips = pseudorandom("michaelrosen_xchips") < G.GAME.probabilities.normal/card.ability.extra.odds and card.ability.extra.heldxchip or nil,
				xchip_message = {message = localize{ type = "variable", key = "a_xchips", vars = { card.ability.extra.heldxchip } }, colour = G.C.CHIPS, sound = "xchips"} or nil,
				x_mult = pseudorandom("michaelrosen_xmult") < G.GAME.probabilities.normal/card.ability.extra.odds and card.ability.extra.heldxmult or nil,
				e_chips = Talisman and pseudorandom("michaelrosen_echips") < G.GAME.probabilities.normal/(card.ability.extra.odds*10) and card.ability.extra.heldechip or nil,
				echip_message = Talisman and {message = localize{ type = "variable", key = "toga_Echip", vars = { card.ability.extra.heldechip } }, colour = G.C.DARK_EDITION, sound = "talisman_echip"} or nil,
				ee_chips = Talisman and pseudorandom("michaelrosen_eechips") < G.GAME.probabilities.normal/(card.ability.extra.odds*20) and card.ability.extra.heldeechip or nil,
				eechip_message = Talisman and {message = localize{ type = "variable", key = "toga_EEchip", vars = { card.ability.extra.heldeechip } }, colour = G.C.DARK_EDITION, sound = "talisman_eechip"} or nil,
				eee_chips = Talisman and pseudorandom("michaelrosen_eeechips") < G.GAME.probabilities.normal/(card.ability.extra.odds*40) and card.ability.extra.heldeeechip or nil,
				eeechip_message = Talisman and {message = localize{ type = "variable", key = "toga_EEEchip", vars = { card.ability.extra.heldeeechip } }, colour = G.C.DARK_EDITION, sound = "talisman_eeechip"} or nil,
				e_mult = Talisman and pseudorandom("michaelrosen_emult") < G.GAME.probabilities.normal/(card.ability.extra.odds*10) and card.ability.extra.heldemult or nil,
				emult_message = Talisman and {message = localize{ type = "variable", key = "toga_Emult", vars = { card.ability.extra.heldemult } }, colour = G.C.DARK_EDITION, sound = "talisman_echip"} or nil,
				ee_mult = Talisman and pseudorandom("michaelrosen_eemult") < G.GAME.probabilities.normal/(card.ability.extra.odds*20) and card.ability.extra.heldeemult or nil,
				eemult_message = Talisman and {message = localize{ type = "variable", key = "toga_EEmult", vars = { card.ability.extra.heldeemult } }, colour = G.C.DARK_EDITION, sound = "talisman_eemult"} or nil,
				eee_mult = Talisman and pseudorandom("michaelrosen_eeemult") < G.GAME.probabilities.normal/(card.ability.extra.odds*40) and card.ability.extra.heldeeemult or nil,
				eeemult_message = Talisman and {message = localize{ type = "variable", key = "toga_EEEmult", vars = { card.ability.extra.heldeeemult } }, colour = G.C.DARK_EDITION, sound = "talisman_eeemult"} or nil,
			}
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_rosenhello")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound(from_debuff and "toga_rosenah" or "toga_rosenbye")
		end
	end,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge("Joke (TOGA)", G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1 )
	end
}

-- Joke Joker. Originally had 'whatthefuck' as key.
if Talisman then
	SMODS.Joker{
		key = 'whatisthis',
		config = { extra = { part = 1.05 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.part } }
		end,
		unlocked = true,
		in_pool = function()
			return togabalatro.config.JokeJokersActive -- Should only spawn if allowed to via config!
		end,
		rarity = 4,
		atlas = 'TOGAJokersMain',
		pos = { x = 0, y = 2 },
		soul_pos = { x = 4, y = 1 },
		cost = 40,
		blueprint_compat = true,
		calculate = function(self, card, context)
			if context.other_consumeable then
				local effects = {
					ee_mult = card.ability.extra.part > 1 and card.ability.extra.part or nil,
					eemult_message = card.ability.extra.part > 1 and {message = localize{ type = "variable", key = "toga_EEmult", vars = { card.ability.extra.part } }, colour = G.C.DARK_EDITION, sound = "talisman_eemult"} or nil,
				}
				if Incantation and context.other_consumeable.ability and context.other_consumeable.ability.qty then
					for i = 1, context.other_consumeable.ability.qty do
						SMODS.calculate_individual_effect(effects, context.other_consumeable, 'ee_mult', effects.ee_mult, false)
					end
				else return effects end
			end
		end,
		add_to_deck = function(self, card, from_debuff)
			if G.STAGE == G.STAGES.RUN and not G.screenwipe then card.sell_cost = 0 end
			if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
				play_sound("toga_ie31")
			end
		end,
		remove_from_deck = function(self, card, from_debuff)
			if G.STAGE == G.STAGES.RUN and not G.screenwipe then card.sell_cost = 0 end
			if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
				play_sound("toga_access97")
			end
		end,
		set_badges = function(self, card, badges)
			badges[#badges+1] = create_badge("Joke (TOGA)", G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1 )
		end
	}
end

-- Joke Joker. Bit of an inside funny.
if Talisman then
	SMODS.Joker{
		key = 'quacksoft',
		config = { extra = { baseechip = 1, cardechip = 0.01 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.cardechip, G.deck and G.deck.cards and card.ability.extra.baseechip + (card.ability.extra.cardechip*#G.deck.cards) or card.ability.extra.baseechip } }
		end,
		unlocked = true,
		in_pool = function()
			return togabalatro.config.JokeJokersActive -- Should only spawn if allowed to via config!
		end,
		rarity = 4,
		atlas = 'TOGAJokersOther',
		pos = { x = 2, y = 0 },
		soul_pos = { x = 4, y = 0 },
		cost = 32,
		blueprint_compat = true,
		calculate = function(self, card, context)
			if context.joker_main then
				local echipcalc = (card.ability.extra.baseechip + (card.ability.extra.cardechip*#G.deck.cards))
				return {
					e_chips = echipcalc > 1 and echipcalc or nil,
					echip_message = echipcalc > 1 and {message = localize{ type = "variable", key = "toga_Echip", vars = { echipcalc } }, colour = G.C.DARK_EDITION, sound = "talisman_echip"} or nil
				}
			end
		end,
		add_to_deck = function(self, card, from_debuff)
			if G.STAGE == G.STAGES.RUN and not G.screenwipe then card.sell_cost = 0 end
			if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
				play_sound("toga_duck")
			end
		end,
		remove_from_deck = function(self, card, from_debuff)
			if G.STAGE == G.STAGES.RUN and not G.screenwipe then card.sell_cost = 0 end
			if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
				play_sound("toga_kcud")
			end
		end,
		set_badges = function(self, card, badges)
			badges[#badges+1] = create_badge("Joke (TOGA)", G.C.SECONDARY_SET.Tarot, G.C.WHITE, 1 )
		end,
		update = function(self, card, context)
			if card.ability.extra.baseechip < 1 then card.ability.extra.baseechip = 1 end
		end
	}
end