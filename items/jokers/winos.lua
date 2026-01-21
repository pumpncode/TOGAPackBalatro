sendInfoMessage("Loading Jokers - Windows OS...", "TOGAPack")

local winj = {}

table.insert(winj, {
	key = 'win95',
	config = { extra = { hands = 1, discards = 1, xhd = 2, slots = 3 } },
	loc_vars = function(self, info_queue, card)
		card.ability.extra.xhd = math.max(card.ability.extra.xhd, 2)
		return { key = togabalatro.stjcheck() and self.key.."_stj" or self.key, vars = { card.ability.extra.hands, card.ability.extra.discards } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 0 },
	cost = 6,
	blueprint_compat = true,
	demicolon_compat = true,
	calculate = function(self, card, context)
		if (context.setting_blind or context.forcetrigger) and not (context.blueprint_card or card).getting_sliced then
			if context.blind and context.blind.boss then ease_hands_played(card.ability.extra.hands) end
			ease_discard(card.ability.extra.discards)
			return { message = localize('toga_32bits') }
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
	end,
})

togabalatro.gettotaljokervalue = function()
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

table.insert(winj, {
	key = 'win98',
	config = { extra = { consslotbonus = 0.1, totalconsslotbonus = 0, percentage = 0.2 } },
	loc_vars = function(self, info_queue, card)
		card.ability.extra.totalconsslotbonus = togabalatro.getconscount()*card.ability.extra.consslotbonus or 0
		return { vars = { card.ability.extra.consslotbonus*100, card.ability.extra.totalconsslotbonus*100, card.ability.extra.percentage*100, togabalatro.gettotaljokervalue()*card.ability.extra.percentage } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 0 },
	cost = 5,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local sellvalues = togabalatro.gettotaljokervalue()*card.ability.extra.percentage
			local slotbonus = sellvalues*togabalatro.getconscount()*card.ability.extra.consslotbonus or 0
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
	end
})

local function toga_vouchcount()
	return G.vouchers and G.vouchers.cards and #G.vouchers.cards or 0
end

table.insert(winj, {
	key = 'winmillenium',
	config = { extra = { basechips = 10, chipbonus = 10, totalbonus = 20 } },
	loc_vars = function(self, info_queue, card)
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.chipbonus * toga_vouchcount()
		return { vars = { card.ability.extra.basechips, card.ability.extra.chipbonus, card.ability.extra.totalbonus } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 0 },
	cost = 6,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.chipbonus * toga_vouchcount()
		
		if context.other_joker or context.other_consumeable then
			return { chips = card.ability.extra.totalbonus, message_card = context.other_joker or context.other_consumeable }
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
})

table.insert(winj, {
	key = 'winnt4',
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 1 },
	cost = 6,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if not context.other_card:is_face() then
				-- This is basically the inverse of Sock and Buskin...
				return {
					message = localize('k_again_ex'),
					repetitions = 1,
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
})

table.insert(winj, {
	key = 'win2000',
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 1 },
	cost = 8,
	blueprint_compat = true,
	perishable_compat = false,
	eternal_compat = false,
	demicolon_compat = true,
	calculate = function(self, card, context)
		if (context.end_of_round or context.forcetrigger) and not (context.individual or context.repetition) then
			return { func = function()
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
			end }
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
})

table.insert(winj, {
	key = 'winxp',
	config = { extra = { odds = 8 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { SMODS.get_probability_vars(card or self, 1, (card.ability or self.config).extra.odds) } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 1 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.toga_xplvlup then return { card = context.blueprint_card or card, odds = card.ability.extra.odds } end
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
})

table.insert(winj, {
	key = 'winvista',
	config = { extra = { active = true } },
	loc_vars = function(self, info_queue, card)
		return { key = togabalatro.stjcheck() and self.key.."_stj" or self.key, vars = { localize(card.ability.extra.active and 'toga_active' or 'toga_inactive') } }
	end,
	unlocked = true,
	in_pool = function()
		return togabalatro.config.ShowPower
	end,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 2 },
	cost = 10,
	blueprint_compat = false,
	demicolon_compat = false,
	calculate = function(self, card, context)
		if context.blueprint or context.retrigger_joker then return end
		if card.ability.extra.active and context.destroy_card and context.cardarea == G.play and context.scoring_hand and #context.scoring_hand == 1 and #context.full_hand == 1 and context.destroy_card:get_id() == 6 then
			return {
				remove = true,
				func = function()
					if #G.jokers.cards > 0 then
						local iter, iterlimit, seljoker = 0, 10*#G.jokers.cards, nil
						repeat
							iter = iter + 1
							seljoker = pseudorandom_element(G.jokers.cards, pseudoseed('notverywow'))
							if seljoker and seljoker.edition and not seljoker.edition.negative then break end
						until seljoker and seljoker.edition and not seljoker.edition.negative or iter >= iterlimit
						if seljoker and seljoker.edition and not seljoker.edition.negative then
							G.E_MANAGER:add_event(Event({func = function()
								if seljoker and seljoker.edition and not seljoker.edition.negative then
									card:juice_up()
									seljoker:set_edition('e_negative')
									card.ability.extra.active = false
									SMODS.calculate_effect({message = localize('toga_inactive')}, card)
								end
							return true end }))
						end
					end
					return true
				end
			}
		end
		if context.end_of_round and context.beat_boss and not card.ability.extra.active then
			card.ability.extra.active = true
			return { message = localize('k_active_ex') }
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winvista78logon")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winvista78logoff")
			else play_sound("toga_winvista7critstop") end
		end
	end,
	poweritem = true
})

table.insert(winj, {
	key = 'win7',
	config = { extra = { x_mult = 1.25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult } }
	end,
	unlocked = true,
	in_pool = function()
		return togabalatro.config.ShowPower
	end,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 2 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.hand and context.other_card and context.other_card:get_id() == 7 and not context.end_of_round and not context.repetition and not context.repetition_only and not context.other_card.debuff then
			local houseofcommons = {}
			if G.consumeables and #G.consumeables.cards > 0 then
				for i = 1, #G.consumeables.cards do
					if G.consumeables.cards[i].ability.consumeable and not houseofcommons[G.consumeables.cards[i].ability.set] then houseofcommons[G.consumeables.cards[i].ability.set] = G.consumeables.cards[i] end
				end
			end
			if next(houseofcommons) then
				local result = {}
				for k, v in pairs(houseofcommons) do
					if next(v) then
						result = SMODS.merge_effects({ result, { x_mult = card.ability.extra.x_mult, message_card = context.other_card, card = context.blueprint_card or card, juice_card = v }})
					end
				end
				return result
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winvista78logon")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winvista78logoff")
			else play_sound("toga_winvista7critstop") end
		end
	end,
	poweritem = true
})

table.insert(winj, {
	key = 'win8',
	config = { extra = { xmult = 0.08 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	unlocked = true,
	in_pool = function()
		return togabalatro.config.ShowPower
	end,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 2 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and context.full_hand and #context.full_hand > 1 then
			local hastriggered = false
			for i = 1, #context.full_hand do
				local pcard = context.full_hand[i]
				if pcard:get_id() == 8 then
					if not hastriggered then hastriggered = true; SMODS.calculate_effect({message = '!'}, context.blueprint_card or card) end
					SMODS.scale_card(pcard, {
						ref_table = pcard.ability,
						ref_value = "perma_h_x_mult",
						scalar_table = card.ability.extra,
						scalar_value = "xmult",
					})
				end
			end
			return nil, hastriggered
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winvista78logon")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winvista78logoff")
			else play_sound("toga_win8error") end
		end
	end,
	pixel_size = { w = 70, h = 84 },
	poweritem = true
})

return winj