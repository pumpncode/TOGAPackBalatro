-- Header be gone! Moved to togapack.json.
-- This version is for BetterCalc!

sendInfoMessage("Hello World! Starting TOGAPack...", "TOGAPack")

-- Define thy map.
SMODS.Atlas{key = "TOGAJokersMain", path = "togajokers.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokersOther", path = "togajokersother.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersWindows", path = "togajokerswinos.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersUpdate", path = "togajokerupdate.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGABoosterPack", path = "togabooster.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAConsumables", path = "togacons.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGADeckBack", path = "togadeck.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGATags", path = "togatags.png", px = 34, py = 34}
SMODS.Atlas({key = "modicon", path = "togaicon.png", px = 32, py = 32}):register()

-- Hear me scream!
SMODS.Sound({key = "win95start", path = "win95start.ogg"}) -- The Microsoft Sound (95 & NT4)
SMODS.Sound({key = "win95tada", path = "win95tada.ogg"}) -- tada.wav (3.x, 95 & NT4)
SMODS.Sound({key = "chordold", path = "chordold.wav"}) -- chord.wav (95 & NT4)
SMODS.Sound({key = "chord", path = "chord.wav"}) -- chord.wav (98, ME, 2000 and XP)
SMODS.Sound({key = "win98start", path = "win98start.ogg"}) -- The Microsoft Sound (98) [edited]
SMODS.Sound({key = "win98tada", path = "win98tada.ogg"}) -- tada.wav (98, ME, 2000 and XP)
SMODS.Sound({key = "winmestart", path = "winmestart.ogg"}) -- Windows Logon Sound for ME/2000 [edited]
SMODS.Sound({key = "winmeshutdown", path = "winmeshutdown.ogg"}) -- Windows Logoff Sound for ME/2000 [edited]
SMODS.Sound({key = "winnt4start", path = "winnt4start.ogg"}) -- Windows Logon Sound for NT4 [edited]
SMODS.Sound({key = "winnt4shutdown", path = "winnt4shutdown.ogg"}) -- Windows Logoff Sound for NT4 [edited]
SMODS.Sound({key = "ssb64crowdohh", path = "Crowd Ohhh.ogg"}) -- Crowd Ohhh from Super Smash Bros 64
SMODS.Sound({key = "duck", path = "duck.ogg"}) -- Mac OS 9 Quack
SMODS.Sound({key = "kcud", path = "kcud.ogg"}) -- kcauQ 9 SO caM
SMODS.Sound({key = "ie31", path = "1.wav"}) -- Internet Explorer 3 Administration Kit Autorun
SMODS.Sound({key = "access97", path = "Microsoft Access 97 Sound.wav"}) -- Microsoft Access 97
SMODS.Sound({key = "recyclebinsfx", path = "recycle.ogg"}) -- recycle.wav (98, ME, 2000) 
SMODS.Sound({key = "plus98emptybin", path = "WI_EMPTY.WAV"}) -- Plus! 98, Windows 98 Empty Recycle Bin
SMODS.Sound({key = "infraredbegin", path = "ir_begin.ogg"}) -- Infrared Begin (starting infrared activity?)
SMODS.Sound({key = "infraredend", path = "ir_end.ogg"}) -- Infrared End (ending infrared activity?)
SMODS.Sound({key = "o97doorbell", path = "doorbell.wav"}) -- doorbell.wav from Office 97 Multimedia
SMODS.Sound({key = "o97glide", path = "glide.wav"}) -- glide.wav from Office 97 Multimedia
SMODS.Sound({key = "mmeclap", path = "CLAP.WAV"}) -- clap.wav from Windows 3.0 MME
SMODS.Sound({key = "officehammer", path = "HAMMER.WAV"}) -- hammer.wav from Microsoft Office sounds
SMODS.Sound({key = "mscmenucmd", path = "Musica Menu Command.ogg"}) -- Musica Sound Scheme (95 & NT4)
SMODS.Sound({key = "spb", path = "kc57.ogg"}) -- Unused in Knuckles Chaotix, Self-Propelled Bomb targeting first place in SRB2Kart/Dr. Robotnik's Ring Racers.
SMODS.Sound({key = "anviluse", path = "mcanviluse.ogg"}) -- Snippet of block.anvil.use.

-- I command you to execute.
SMODS.Sound({key = "win95pluscmd1", path = "plus95/Dangerous Creatures menu command.ogg"})
SMODS.Sound({key = "win95pluscmd2", path = "plus95/Inside your Computer menu command.ogg"})
SMODS.Sound({key = "win95pluscmd3", path = "plus95/Jungle menu command.ogg"})
SMODS.Sound({key = "win95pluscmd4", path = "plus95/Leonardo da Vinci menu command.ogg"})
SMODS.Sound({key = "win95pluscmd5", path = "plus95/Mystery menu command.ogg"})
SMODS.Sound({key = "win95pluscmd6", path = "plus95/Nature menu command.ogg"})
SMODS.Sound({key = "win95pluscmd7", path = "plus95/Science menu command.ogg"})
SMODS.Sound({key = "win95pluscmd8", path = "plus95/Space menu command.ogg"})
SMODS.Sound({key = "win95pluscmd9", path = "plus95/Sports menu command.ogg"})
SMODS.Sound({key = "win95pluscmd10", path = "plus95/The 60's USA menu command.ogg"})
SMODS.Sound({key = "win95pluscmd11", path = "plus95/The Golden Era menu command.ogg"})
SMODS.Sound({key = "win95pluscmd12", path = "plus95/Windows 95 menu command.ogg"})

-- Booster Pack content. So true.
SMODS.ObjectType{
    object_type = "ObjectType",
    key = "TOGAJKR",
    default = "j_toga_win95",
	cards = {
		["j_toga_y2kbug"] = true, ["j_toga_controlpanel"] = true, ["j_toga_mcanvil"] = true,
		["j_toga_taskmgr"] = true, ["j_toga_solitairejoker"] = true, ["j_toga_win95"] = true,
		["j_toga_win98"] = true, ["j_toga_winmillenium"] = true, ["j_toga_winnt4"] = true,
		["j_toga_jokersrb2kart"] = true, ["j_toga_useraccounts"] = true, ["j_toga_virtualmemory"] = true,
		["j_toga_computerlock"] = true, ["j_toga_recyclebin"] = true, ["j_toga_theinternet"] = true,
		["j_toga_bonusducks"] = true
	}
}

-- I think, therefore, I am.
togabalatro = SMODS.current_mod
togabalatro.config_tab = function() -- didn't expect it to be THIS convoluted... but other mods sure were going this route.
	return {n = G.UIT.ROOT, config = {r = 0.1, align = "cm", padding = 0.1, colour = G.C.BLACK, minw = 7, minh = 2}, nodes = {
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenAdding" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = "SFX when getting some of the mods' Jokers", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenRemoving" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = "SFX when removing some of the mods' Jokers", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenTriggered" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = "SFX when some Jokers from this mod are triggered", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "JokeJokersActive" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = "Allow 'Joke' Jokers to appear in pool", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "DoMoreLogging" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = "Allow some Jokers to send logs", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}}
	}}
end

togabalatro.description_loc_vars = function(self)
	return {
		scale = 1.25,
		text_colour = HEX('FFFFFF'),
		background_colour = HEX('2B2B2B')
	}
end

-- Check for 2 and King.
local function toga_y2kcheck(context)
	local twopresent = 0
	local kingpresent = 0
	for i = 1, #context.full_hand do
		if SMODS.Ranks[context.full_hand[i].base.value].key == "2" then
			twopresent = twopresent+1
		end
		if SMODS.Ranks[context.full_hand[i].base.value].key == "King" then
			kingpresent = twopresent+1
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
	config = { extra = { money = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money, card.ability.extra.xchip_increase, card.ability.extra.xchip_mod } }
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
		
		if context.remove_playing_cards then
			ease_dollars(card.ability.extra.money*#context.removed)
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = '$'..card.ability.extra.money*#context.removed, colour = G.C.GOLD})
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
				return {
					x_mult = card.ability.extra.totalXmult,
				}
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
				local chipswap, multswap = hand_chips, mult
				hand_chips, mult = mod_chips(multswap), mod_mult(chipswap)
				update_hand_text({delay = 0}, {chips = hand_chips, mult = mult})
				card_eval_status_text(card, 'extra', nil, percent, nil, {message = localize('toga_pagefileuse'), colour = G.C.PURPLE, sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_mmeclap"})
			end
		end
	end,
}

SMODS.Joker{
	key = 'recyclebin',
	config = { extra = { xchip_increase = 0.05, xchip_mod = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchip_increase, card.ability.extra.xchip_mod, card.ability.extra.xchip_increase*2.5 } }
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
					xchip_message = card.ability.extra.xchip_mod > 1 and {message = localize{ type = "variable", key = "a_xchips", vars = { card.ability.extra.xchip_mod } }, colour = G.C.CHIPS, sound = "talisman_xchip"} or nil,
					card = card
				}
			end
		end
	
		if context.remove_playing_cards then
			for k, v in ipairs(context.removed) do
				if v.ability.set == 'Enhanced' then
					card.ability.extra.xchip_mod = card.ability.extra.xchip_mod+(card.ability.extra.xchip_increase*2.5)
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
	config = { extra = { curchips = 0, bonuschips = 10 } },
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

-- Random SFX.
local function toga_plus95rndsfx()
	return 'toga_win95pluscmd'..math.random(1, 12)
end

SMODS.Joker{
	key = 'drivespace',
	config = { extra = { reduce = 0.99 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.reduce } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 1 },
	cost = 20,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and not context.before and not context.after and not context.repetition and not context.repetition_only and not context.blueprint then
				-- card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Compress!', colour = G.C.FILTER})
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
}

SMODS.Joker{
	key = 'systemrestore',
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 0, y = 4 },
	cost = 25,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.remove_playing_cards then
			for i = 1, #context.removed do
				if togabalatro.config.DoMoreLogging then sendInfoMessage(context.removed[i].base.id, "TOGAPack") end
				local _card = copy_card(context.removed[1], nil, nil, G.playing_card)
				_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				table.insert(G.playing_cards, _card)
				G.deck:emplace(_card)
			end
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_systemrestore1')})
		end
	end
}

-- Random text.
local function toga_randomruntext()
	local stringtable = { localize('toga_jimbo95txt1'), localize('k_again_ex'), localize('toga_jimbo95txt2'), localize('toga_jimbo95txt3'), localize('toga_jimbo95txt4') }
	return stringtable[math.random(#stringtable)]
end

-- Talisman used here for multiplication of chips.
SMODS.Joker{
	key = 'jimbo95',
	config = { extra = { h_size = 2, retriggers = 1, x_chips = 1.25, x_mult = 1.25} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.h_size, card.ability.extra.retriggers, card.ability.extra.x_chips, card.ability.extra.x_mult } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 4, y = 0 },
	cost = 20,
	blueprint_compat = true,
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
				xchip_message = card.ability.extra.x_chips > 1 and {message = localize{ type = "variable", key = "a_xchips", vars = { card.ability.extra.x_chips } }, colour = G.C.CHIPS, sound = "talisman_xchip"} or nil,
				x_mult = card.ability.extra.x_mult > 1 and card.ability.extra.x_mult or nil
			}
		end
		if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= card then
			if card.ability.extra.retriggers < 1 then card.ability.extra.retriggers = 1 end -- always at least once.
			return {
				message = toga_randomruntext(),
				repetitions = card.ability.extra.retriggers,
				card = card,
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
	config = { extra = { hands = 1, discards = 1, money = 4, Xmoney = 2, slots = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hands, card.ability.extra.discards, card.ability.extra.money, card.ability.extra.Xmoney, card.ability.extra.slots } }
	end,
	unlocked = true,
	discovered = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 0 },
	cost = 8,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced and not context.blueprint then
			ease_hands_played(card.ability.extra.hands)
			ease_discard(card.ability.extra.discards)
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

SMODS.Joker{
	key = 'win98',
	config = { extra = { chips = 50, mult = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 0 },
	cost = 7,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main then
			if G.consumeables then
				for i, v in pairs(G.consumeables.cards) do
					if togabalatro.config.DoMoreLogging then sendInfoMessage("Consumable "..i.." trigger.", "TOGAPack") end
					SMODS.calculate_effect({chips = card.ability.extra.chips, mult = card.ability.extra.mult}, G.consumeables.cards[i])
				end
			end
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

SMODS.Joker{
	key = 'winmillenium',
	config = { extra = { chips = 15, chipbonus = 15, totalbonus = 15 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.chipbonus, card.ability.extra.totalbonus } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersWindows',
	pos = { x = 0, y = 1 },
	cost = 7,
	blueprint_compat = true,
	calculate = function(self, card, context)
		-- Update values.
		local vouchercount = 0
		for i, v in pairs(G.GAME.used_vouchers) do
			if v == true then vouchercount = vouchercount + 1 end
		end
		card.ability.extra.totalbonus = card.ability.extra.chips + card.ability.extra.chips*vouchercount
		
		-- Inspired by Simplified Joker from MoreFluff.
		if context.other_joker and context.other_joker.ability.set == "Joker" then
			return {
				--message = localize({type = 'variable', key = 'a_chips', vars = { card.ability.extra.totalbonus }}),
				card = context.other_joker,
				chips = card.ability.extra.totalbonus,
			}
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_winmestart")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			if not from_debuff then play_sound("toga_winmeshutdown")
			else play_sound("toga_chord") end
		end
	end
}

SMODS.Joker{
	key = 'winnt4',
	config = { extra = { repetitions = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.repetitions } }
	end,
	unlocked = true,
	rarity = 3,
	atlas = 'TOGAJokersWindows',
	pos = { x = 1, y = 1 },
	cost = 15,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if not context.other_card:is_face() then
				-- This is basically the inverse of Sock and Buskin...
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
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
	key = 'clippit',
	config = { extra = { repetitions = 3, handsize = 1, bosshandsize = 3 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = {key = "toga_clippyorigin", set = 'Other'}
		return { vars = { card.ability.extra.repetitions, card.ability.extra.handsize, card.ability.extra.bosshandsize } }
	end,
	unlocked = true,
	rarity = 4,
	atlas = 'TOGAJokersMain',
	pos = { x = 1, y = 2 },
	soul_pos = { x = 4, y = 2 },
	cost = 25,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind and G.GAME.blind.boss and not context.blueprint and not card.ability.extra.bosshandsizegiven then
			G.hand:change_size(card.ability.extra.bosshandsize)
			card.ability.extra.bosshandsizegiven = true
		end
		local repeats = card.ability.extra.repetitions
		-- if context.cardarea == G.hand and context.other_card then
			-- if context.repetition or (context.end_of_round and context.main_scoring) then
				-- return {
                    -- message = localize('k_again_ex'),
					-- repetitions = repeats,
					-- sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_officehammer"
				-- }
			-- end
		if context.cardarea == G.hand and context.repetition then
			return {
				message = localize('k_again_ex'),
				repetitions = repeats,
				sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_officehammer",
				card = card
			}
		else
			if context.end_of_round and not (context.individual or context.repetition or context.blueprint) and G.GAME.blind.boss and card.ability.extra.bosshandsizegiven then
				G.hand:change_size(-card.ability.extra.bosshandsize)
				card.ability.extra.bosshandsizegiven = nil
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		G.hand:change_size(-card.ability.extra.handsize)
		if not from_debuff and togabalatro.config.SFXWhenAdding and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_o97doorbell")
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(card.ability.extra.handsize)
		if not from_debuff and togabalatro.config.SFXWhenRemoving and G.STAGE == G.STAGES.RUN and not G.screenwipe then
			play_sound("toga_o97glide")
		end
	end,
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
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(-card.ability.extra.h_size)
	end,
	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced and not context.blueprint then
			ease_hands_played(-card.ability.extra.hands)
		end
		
		if context.joker_main then
			return {
				--message = localize({ type = "variable", key = "a_chips", vars = { card.ability.extra.chips } }),
				chips = card.ability.extra.chips
			}
		end
	end
}

local function toga_checkxmultsafe(card)
	local xmultcheck = card.ability.extra.Xmult_current * card.ability.extra.shortcutfailmult
	if xmultcheck < 1 then return false else return true end
end

SMODS.Joker{
	key = 'jokersrb2kart',
	config = { extra = { Xmult_current = 1, add_shop = 0.05, addshortcut = 0.75, shortcutfailmult = 0.67, maxchance = 5, toexactchance = 4} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_current, card.ability.extra.add_shop, card.ability.extra.addshortcut, (1-card.ability.extra.shortcutfailmult)*100,
						  (G.GAME.probabilities.normal or 1) * card.ability.extra.toexactchance, card.ability.extra.maxchance } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 1, y = 0 },
	cost = 10,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if not card then return end
		if card.ability.extra.eliminated or card.debuff then return end
		
		if card.ability.extra.Xmult_current < 1 and not card.debuff then -- Catch.
			play_sound('tarot1')
			if not silent and togabalatro.config.SFXWhenTriggered then card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_karteliminated'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_ssb64crowdohh'}) end -- Eliminated!
			card.ability.extra.Xmult_current = 0
			card.ability.extra.eliminated = true
			SMODS.debuff_card(card, true, card)
		end
		
		if (context.buying_card or context.selling_card or context.playing_card_added or context.ending_shop or context.using_consumeable) and not context.individual and not context.blueprint then
			card.ability.extra.Xmult_current = card.ability.extra.Xmult_current + card.ability.extra.add_shop
			G.E_MANAGER:add_event(Event({func = function()
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')});
				return true
			end}))
		elseif (context.skip_blind or context.skipping_booster) and not context.blueprint then
			if pseudorandom('j_toga_jokersrb2kart') > (G.GAME.probabilities.normal * card.ability.extra.toexactchance) / card.ability.extra.maxchance then
				if not toga_checkxmultsafe(card) then
				-- card.ability.extra.Xmult_current = card.ability.extra.Xmult_current * card.ability.extra.shortcutfailmult
				-- if card.ability.extra.Xmult_current < 1 then
					-- Eliminated!
					if not silent and togabalatro.config.SFXWhenTriggered then card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_karteliminated'), colour = G.C.RED, sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_ssb64crowdohh'}) end
					card.ability.extra.Xmult_current = 0
					card.ability.extra.eliminated = true
					SMODS.debuff_card(card, true, card)
					return true
				else
					card.ability.extra.Xmult_current = card.ability.extra.Xmult_current * card.ability.extra.shortcutfailmult
					G.E_MANAGER:add_event(Event({func = function()
						card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_kartouch'), colour = G.C.RED});
						return true
					end}))
				end
			else
				card.ability.extra.Xmult_current = card.ability.extra.Xmult_current + card.ability.extra.addshortcut
				G.E_MANAGER:add_event(Event({func = function()
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')});
					return true
				end}))
			end
		elseif context.joker_main then
			if card.ability.extra.Xmult_current > 1 then
				return {
					--message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult_current } }),
					x_mult = card.ability.extra.Xmult_current,
					--colour = G.C.MULT
				}
			end
			-- if card.ability.extra.Xmult_current < 1 then -- Catch.
				-- play_sound('tarot1')
				-- if not silent and togabalatro.config.SFXWhenTriggered then play_sound('toga_ssb64crowdohh') end
				-- card.ability.extra.Xmult_current = 0
				-- card.ability.extra.eliminated = true
				-- SMODS.debuff_card(card, true, card)
			-- end
		end
	end,
}

SMODS.Joker{
	key = 'asterism',
	config = { extra = { curmult = 0, bonusmult = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.curmult, card.ability.extra.bonusmult } }
	end,
	unlocked = true,
	rarity = 2,
	atlas = 'TOGAJokersOther',
	pos = { x = 0, y = 1 },
	cost = 8,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
			card.ability.extra.curmult = card.ability.extra.curmult + card.ability.extra.bonusmult
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = { card.ability.extra.curmult } } })
		end
		
		if context.joker_main and card.ability.extra.curmult > 0 then
			return {
				--message = localize({ type = "variable", key = "a_mult", vars = { card.ability.extra.curmult } }),
				mult = card.ability.extra.curmult,
				--colour = G.C.MULT,
				--card = card
			}
		end
	end
}

SMODS.Joker{
	key = 'bonusducks',
	unlocked = true,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_bonus
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
					sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_duck'
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

-- Count steel card amount in full deck and round up the returned result.
local function toga_gettotalsteelcount()
	local allsteel = 0
	if G.playing_cards then
		for k, v in pairs(G.playing_cards) do
			if v.config.center == G.P_CENTERS.m_steel then allsteel = allsteel+1 end
		end
	end
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
		return { vars = { card.ability.extra.repetitions, toga_updatesteelrepeat(card) } }
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
				repetitions = card.ability.extra.totalrepetitions,
				card = card,
				sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_anviluse',
				pitch = not silent and togabalatro.config.SFXWhenTriggered and math.random(0.8, 1.2) -- not sure if this is valid, lmao.
			}
		end
	end,
	update = function(self, card)
		card.ability.extra.totalrepetitions = card.ability.extra.repetitions*toga_gettotalsteelcount() or 0
	end
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
	pos = { x = 0, y = 2 },
	cost = 40,
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

local function toga_subtable(ttable, found, increase)
	for k, v in pairs(ttable) do
		if type(v) == 'number' then
			local rplc = v*(1+increase)
			ttable[k] = rplc
			foundmodified = true
		elseif type(v) == 'table' then
			toga_subtable(v, found, increase) -- This is a bit dangerous...
		end
	end
end

-- Most Jokers (should) use card.ability.extra anyway...
local function toga_rndvaluetarget(origcard, increase, curiter)
	if not origcard.ability.extra.canupgrade then return false end
	
	curiter = curiter or 1
	if togabalatro.config.DoMoreLogging then sendInfoMessage("Joker Update - "..curiter.." out of 32", "TOGAPack") end
	
	-- Find random joker that is not one of ourselves.
	--local selectedjoker = G.jokers.cards[math.random(1, #G.jokers.cards)]
	local selectedjoker = pseudorandom_element(G.jokers.cards, pseudoseed('j_toga_update'))
	if #G.jokers.cards > 1 then
		while selectedjoker.config.center.key == 'j_toga_winupdate' do
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
	config = { extra = { plusval = 0.25, canupgrade = false, active = localize('toga_inactive') }, },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.plusval*100, card.ability.extra.active } }
	end,
	unlocked = true,
	in_pool = function()
		if #SMODS.find_card('j_toga_winupdate', true) > 0 then return false
		else return true end
	end,
	rarity = 4,
	atlas = 'TOGAJokersUpdate',
	pos = { x = 0, y = 0 },
	cost = 8,
	blueprint_compat = false,
	perishable_compat = false,
	calculate = function(self, card, context)
		if context.blueprint then return end
		
		if context.playing_card_added and not card.getting_sliced and card.ability.extra.canupgrade and #G.jokers.cards > 1 then
			--if toga_rndvaluetarget(card, card.ability.extra.plusval) then card.ability.extra.canupgrade = false end
			toga_rndvaluetarget(card, card.ability.extra.plusval)
		end
		
		if context.end_of_round and not context.repetition and not context.individual and not card.ability.extra.canupgrade then
			card.ability.extra.canupgrade = true
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_updateready')})
		end
		
		if card.ability.extra.canupgrade then card.ability.extra.active = localize('toga_active') else card.ability.extra.active = localize('toga_inactive') end
	end,
	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.animated = true
	end,
	remove_from_deck = function(self, card, from_debuff)
		card.ability.extra.animated = nil
	end,
	update = function(self, card, context)
		if card.ability.extra.canupgrade then card.ability.extra.active = localize('toga_active') else card.ability.extra.active = localize('toga_inactive') end
		
		if not card.ability.extra.animated then return end
		if G.jokers.config.card_limit < 0 then G.jokers.config.card_limit = 1 end -- Just in case.
		local timer = (G.TIMERS.REAL * 4)
		local frame_amount = #winupdateframes
		local wrapped_value = (math.floor(timer) - 1) % frame_amount + 1
		card.children.center:set_sprite_pos({x = winupdateframes[wrapped_value], y = 0})
	end
}

-- Joke Joker. Originally had 'whatthefuck' as key.
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
	cost = 97,
	blueprint_compat = true,
	calculate = function(self, card, context)
		card.sell_cost = 0
		if context.joker_main then
			return {
				-- EEmult_mod = card.ability.extra.part,
				-- message = localize({ type = "variable", key = "toga_EEmult", vars = { card.ability.extra.part } }),
				-- colour = G.C.DARK_EDITION
				
				ee_mult = card.ability.extra.part > 1 and card.ability.extra.part or nil,
				eemult_message = card.ability.extra.part > 1 and {message = localize{ type = "variable", key = "toga_EEmult", vars = { card.ability.extra.part } }, colour = G.C.DARK_EDITION, sound = "talisman_eemult"} or nil,
			}
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

-- Joke Joker. Bit of an inside funny.
SMODS.Joker{
	key = 'quacksoft',
	config = { extra = { part = 1.25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.part } }
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
		card.sell_cost = 0
		if context.joker_main then
			return {
				-- Echip_mod = card.ability.extra.part,
				-- --message = localize({ type = "variable", key = "toga_Echip", vars = { card.ability.extra.part } }),
				-- colour = G.C.DARK_EDITION
				
				e_chips = card.ability.extra.part > 1 and card.ability.extra.part or nil,
				echip_message = card.ability.extra.part > 1 and {message = localize{ type = "variable", key = "toga_Echip", vars = { card.ability.extra.part } }, colour = G.C.DARK_EDITION, sound = "talisman_echip"} or nil,
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
 	end
}

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
		toga_spbdeckwreck(card)
		delay(0.5)
	end,
	add_to_deck = function(self, card, from_debuff)
		play_sound('toga_spb')
	end,
	remove_from_deck = function(self, card, from_debuff)
		if pseudorandom("toga_selfpropelledbomb") < G.GAME.probabilities.normal/card.ability.extra.odds and not card.ability.extra.activated then
			toga_spbdeckwreck(card, true)
		end
	end,
}

local toga_bgcolorfunc = {
	{ new_colour = HEX("0A246A"), special_colour = HEX("A6CAF0"), contrast = 1.25 },
	{ new_colour = HEX("000080"), special_colour = HEX("1084D0"), contrast = 1.25 },
	{ new_colour = HEX("0054E3"), special_colour = HEX("3D95FF"), contrast = 1.25 }
}

SMODS.Booster{
	name = "ZIP Package",
	key = "togazipboosterpack",
	atlas = 'TOGABoosterPack',
	pos = {x = 0, y = 0},
	weight = 0.6,
	cost = 10,
	group_key = 'togazipboosterpack',
	config = {extra = 3, choose = 1, name = "ZIP Package"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.config.center.config.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour(toga_bgcolorfunc[math.random(1, #toga_bgcolorfunc)])
	end,
	create_card = function(self, card)
		return create_card('TOGAJKR', G.pack_cards, nil, nil, nil, nil, nil, 'toga')
	end,
}

SMODS.Booster{
	name = "Joker.ZIP",
	key = "togaziparchivepack",
	atlas = 'TOGABoosterPack',
	pos = {x = 1, y = 0},
	weight = 0.8,
	cost = 25,
	group_key = 'togaziparchivepack',
	config = {extra = 10, choose = 2, name = "Joker.ZIP"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.config.center.config.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour({ new_colour = HEX("515966"), special_colour = HEX("121417"), contrast = 1.25 }) -- Longhorn, anyone?
	end,
	create_card = function(self, card)
		return create_card("Joker", G.pack_cards, nil, nil, true, true, nil, 'toga')
	end,
}

SMODS.Tag{
	key = "togajokershop",
	atlas = "TOGATags",
	pos = { x = 0, y = 0 },
	config = { type = "store_joker_create" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local card = create_card("TOGAJKR", context.area, nil, nil, nil, nil, nil, "togajokertag")
			create_shop_card_ui(card, "Joker", context.area)
			card.states.visible = false
			tag:yep("+", G.C.RED, function()
				card:start_materialize()
				card.ability.couponed = true
                card:set_cost()
				return true
			end)
			tag.triggered = true
			return card
		end
	end,
}

SMODS.Tag{
	key = "togajokerbooster",
	atlas = "TOGATags",
	pos = { x = 1, y = 0 },
	config = { type = "new_blind_choice" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		local lock = tag.ID
		if context.type == "new_blind_choice" then
			G.CONTROLLER.locks[lock] = true
			tag:yep('+', G.C.ORANGE,function() 
				local key = 'p_toga_togazipboosterpack'
				local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
				G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({config = {ref_table = card}})
				card:start_materialize()
				G.CONTROLLER.locks[lock] = nil
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

SMODS.Tag{
	key = "togajokerziparchive",
	atlas = "TOGATags",
	pos = { x = 6, y = 0 },
	config = { type = "new_blind_choice" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		local lock = tag.ID
		if context.type == "new_blind_choice" then
			G.CONTROLLER.locks[lock] = true
			tag:yep('+', G.C.ORANGE,function() 
				local key = 'p_toga_togaziparchivepack'
				local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
				G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({config = {ref_table = card}})
				card:start_materialize()
				G.CONTROLLER.locks[lock] = nil
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

SMODS.Tag{
	key = "thespbroll",
	atlas = "TOGATags",
	pos = { x = 2, y = 0 },
	config = { type = "immediate" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		local lock = tag.ID
		if context.type == "immediate" then
			G.CONTROLLER.locks[lock] = true
			tag:yep('+', G.C.ORANGE,function() 
				local card = create_card('Spectral', G.consumables, nil, nil, nil, nil, "c_toga_selfpropelledbomb", "thespbrun")
				card:add_to_deck()
				G.consumeables:emplace(card)
				G.CONTROLLER.locks[lock] = nil
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

SMODS.Tag{
	key = "guaranteedice",
	atlas = "TOGATags",
	pos = { x = 3, y = 0 },
	config = { type = "store_joker_create" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local card = create_card("Joker", context.area, nil, nil, nil, nil, "j_oops")
			create_shop_card_ui(card, "Joker", context.area)
			card.states.visible = false
			tag:yep("+", G.C.RED, function()
				card:start_materialize()
                card:set_cost()
				return true
			end)
			tag.triggered = true
			return card
		end
	end,
}

SMODS.Tag{
	key = "thenet",
	atlas = "TOGATags",
	pos = { x = 4, y = 0 },
	config = { type = "immediate" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		local lock = tag.ID
		if context.type == "immediate" then
			G.CONTROLLER.locks[lock] = true
			tag:yep('+', G.C.ORANGE,function() 
				local card = create_card('Spectral', G.consumables, nil, nil, nil, nil, "c_black_hole", "internetexplorer")
				card:add_to_deck()
				G.consumeables:emplace(card)
				G.CONTROLLER.locks[lock] = nil
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

SMODS.Tag{
	key = "controlexe",
	atlas = "TOGATags",
	pos = { x = 5, y = 0 },
	config = { type = "immediate" },
	in_pool = function(self, args)
		return true
	end,
	apply = function(self, tag, context)
		local lock = tag.ID
		if context.type == "immediate" then
			if #G.jokers.cards > 0 then
				local jokerlist = G.jokers.cards
				pseudoshuffle(jokerlist, pseudoseed('controlpanel'))
				
				G.CONTROLLER.locks[lock] = true
				tag:yep('+', G.C.ORANGE,function() 
					local seledition = poll_edition('98se', nil, false, true)
					pseudorandom_element(jokerlist, pseudoseed('controlpanel')):set_edition(seledition, true)
					G.CONTROLLER.locks[lock] = nil
					return true
				end)
			else
				tag:nope()
			end
			tag.triggered = true
			return true
		end
	end,
}

SMODS.Back{
	key = "frogdeck",
	pos = { x = 0, y = 0 },
	atlas = "TOGADeckBack",
	unlocked = true,
	discovered = true,
	config = {ante_scaling = 1.25, hands = -1, discards = -1, joker_slot = 1, consumable_slot = 1, hand_size = 3, dollars = 6},
	loc_vars = function(self, info_queue, center)
		return { vars = { self.config.hands, self.config.discards, self.config.joker_slot, self.config.consumable_slot, self.config.ante_scaling, self.config.hand_size } }
	end
}

SMODS.Voucher{
    key = 'fat32',
	pos = { x = 1, y = 0 },
	atlas = 'TOGAConsumables',
	unlocked = true,
	cost = 15,
	rarity = 4,
    config = { rarity = 4, extra = { h_size_scale = 0.5 } },
    loc_vars = function(self, info_queue)
        return {vars = {self.config.extra.h_size_scale*100}}
    end,
    requires = {'v_paint_brush', 'v_crystal_ball'},
    redeem = function(self)
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Increased hand size by"..math.ceil(G.hand.config.card_limit*self.config.extra.h_size_scale)..".", "TOGAPack") end
        G.hand:change_size(math.ceil(G.hand.config.card_limit*self.config.extra.h_size_scale))
    end,
}