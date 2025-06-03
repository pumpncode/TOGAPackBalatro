sendInfoMessage("Loading Jokers - Windows OS...", "TOGAPack")

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
		card.ability.extra.totalconsslotbonus = togabalatro.getconscount()*card.ability.extra.consslotbonus or 0
		return { vars = { card.ability.extra.consslotbonus*100, card.ability.extra.totalconsslotbonus*100, card.ability.extra.percentage*100, toga_gettotaljokervalue()*card.ability.extra.percentage } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 0 },
	cost = 5,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local sellvalues = toga_gettotaljokervalue()*card.ability.extra.percentage
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
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.chipbonus*toga_vouchcount()
		
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
		card.ability.extra.totalbonus = card.ability.extra.basechips + card.ability.extra.chipbonus*toga_vouchcount()
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
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 1 },
	cost = 8,
	blueprint_compat = true,
	perishable_compat = false,
	eternal_compat = false,
	calculate = function(self, card, context)
		if context.end_of_round and not (context.individual or context.repetition) then
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
		
		local othcrd = context.other_card
		if (context.retrigger_joker_check and not context.retrigger_joker and othcrd and othcrd ~= card and othcrd.config and othcrd.config.center and othcrd.config.center.key and othcrd.config.center.key ~= 'j_toga_winxp')
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

SMODS.Joker{
	key = 'winvista',
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 2 },
	cost = 10,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == G.play and context.scoring_hand and #context.scoring_hand == 1 and #context.full_hand == 1 and context.destroy_card:get_id() == 6 and not context.blueprint then
			return {
				remove = true,
				func = function()
					if #G.jokers.cards > 1 then
						local iter, iterlimit, seljoker = 0, 10*#G.jokers.cards, nil
						repeat
							iter = iter + 1
							seljoker = pseudorandom_element(G.jokers.cards, pseudoseed('notverywow'))
							if seljoker and seljoker.edition and not seljoker.edition.negative then break end
						until seljoker and seljoker.edition and not seljoker.edition.negative or iter >= iterlimit
						if seljoker and seljoker.edition and not seljoker.edition.negative then
							G.E_MANAGER:add_event(Event({func = function()
								if seljoker and seljoker.edition and not seljoker.edition.negative then
									local curcard = context.blueprint_card or card
									curcard:juice_up()
									seljoker:set_edition('e_negative')
								end
							return true end }))
						end
					end
					return true
				end
			}
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
	end
}

SMODS.Joker{
	key = 'win7',
	config = { extra = { x_mult = 1.2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 2 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.hand and context.other_card and not context.end_of_round and not context.repetition and not context.repetition_only and not context.other_card.debuff then
			local houseofcommons = {}
			if G.jokers and #G.jokers.cards > 1 then
				for i = 1, #G.jokers.cards do
					if G.jokers.cards[i].config.center.rarity == 1 then houseofcommons[#houseofcommons+1] = G.jokers.cards[i] end
				end
			end
			if #houseofcommons > 0 then
				local result = { x_mult = card.ability.extra.x_mult, card = houseofcommons[1] }
				if #houseofcommons >= 2 then
					-- nh6574 was here.
					local return_table = result
					for i = 2, #houseofcommons do
						return_table.extra = { x_mult = card.ability.extra.x_mult, card = houseofcommons[i] }
						return_table = return_table.extra
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
	end
}

SMODS.Joker{
	key = 'win8',
	config = { extra = { xmult = 1.8 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 2, y = 2 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and (context.cardarea == G.deck or context.cardarea == G.discard) and context.other_card:get_id() == 8
		and not context.other_card.debuff and not context.end_of_round then
			return { xmult = card.ability.extra.xmult }
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
	pixel_size = { w = 70, h = 84 }
}