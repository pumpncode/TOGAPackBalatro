sendInfoMessage("Loading Cross-Mod content...", "TOGAPack")

-- Bronze recipe compatibility for Copper from other mods. A bit like the Ore Dictionary of modded Minecraft.
if next(SMODS.find_mod('Bunco')) then
	sendInfoMessage("Bronze recipe can now use Copper from Bunco.", "TOGAPack")
	togabalatro.add_to_oredict('m_bunc_copper', 'copper', true)
end
if next(SMODS.find_mod('reverse_tarot')) then
	sendInfoMessage("Bronze recipe can now use Copper from Reverse Tarots+.", "TOGAPack")
	togabalatro.add_to_oredict('m_reverse_copper', 'copper', true)
end

-- Cross-mod stuff for Mineral card pool. Iron, gold and diamonds are valid examples,
-- but bronze and steel are not intended for this pool for being alloys.
if next(SMODS.find_mod('ortalab')) then
	sendInfoMessage("Adding Ore cards of Ortalab to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_ortalab_ore', 'minerals', true)
end
if next(SMODS.find_mod('RevosVault')) then
	sendInfoMessage("Adding Diamond cards of Revo's Vault to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_crv_diamondcard', 'minerals', true)
	sendInfoMessage("Adding Quartz cards of Revo's Vault to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_crv_quartz', 'minerals', true)
end
if next(SMODS.find_mod('Bunco')) then
	sendInfoMessage("Adding Copper cards of Bunco to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_bunc_copper', 'minerals', true)
end
if next(SMODS.find_mod('reverse_tarot')) then
	sendInfoMessage("Adding Copper cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_reverse_copper', 'minerals', true)
	sendInfoMessage("Adding Marble cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_reverse_marble', 'minerals', true)
	sendInfoMessage("Adding Pyrite cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_reverse_pyrite', 'minerals', true)
	sendInfoMessage("Adding Iridium cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_reverse_iridium', 'minerals', true)
end
if next(SMODS.find_mod('MoreFluff')) then
	sendInfoMessage("Adding Gemstone cards of More Fluff to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_mf_gemstone', 'minerals', true)
	sendInfoMessage("Adding Brass cards of More Fluff to mineral pool...", "TOGAPack")
	togabalatro.add_to_oredict('m_mf_brass', 'minerals', true)
end

-- Howdy, Partner.
if next(SMODS.find_mod('partner')) and Partner_API then
	SMODS.Atlas{key = "TOGAPartners", path = "togapartners.png", px = 66, py = 66}
	Partner_API.Partner{
		key = "startupdisk",
		unlocked = false,
		discovered = true,
		pos = {x = 0, y = 0},
		atlas = "TOGAPartners",
		config = {extra = {percent = 0.025}},
		loc_vars = function(self, info_queue, card)
			local winos = 0
			if G.jokers and #G.jokers.cards > 0 then
				for i = 1, #G.jokers.cards do
					if togabalatro.iswindows(G.jokers.cards[i]) then winos = winos + 1 end
				end
			end
			return { key = winos >= 1 and self.key.."_buff" or self.key, vars = {(100*card.ability.extra.percent)+(100*card.ability.extra.percent*winos), 100*card.ability.extra.percent, 100*card.ability.extra.percent*winos} }
		end,
		calculate = function(self, card, context)
			if context.partner_setting_blind and not context.retrigger_joker then
				local winos = 0
				if G.jokers and #G.jokers.cards > 0 then
					for i = 1, #G.jokers.cards do
						if togabalatro.iswindows(G.jokers.cards[i]) then winos = winos + 1 end
					end
				end
				G.E_MANAGER:add_event(Event({func = function()
					G.GAME.blind.chips = math.floor(G.GAME.blind.chips*(1-(card.ability.extra.percent+card.ability.extra.percent*winos)))
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
					G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
					G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
					G.HUD_blind:recalculate()
					G.hand_text_area.blind_chips:juice_up()
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_floppypartner'), sound = not silent and togabalatro.config.SFXWhenTriggered and 'toga_w95restup'})
				return true end }))
			end
		end,
		check_for_unlock = function(self, args)
			for _, v in pairs(G.P_CENTER_POOLS["Joker"]) do
				if (v.key == "j_toga_win95" or v.key == "j_toga_win98" or v.key == "j_toga_winmillenium" or v.key == "j_toga_winnt4" or v.key == "j_toga_win2000") and get_joker_win_sticker(v, true) >= 1 then
					return true
				end
			end
		end,
		display_size = { w = 80, h = 80 }
	}
	
	local speen = {0, 1, 2, 3, 4, 5, 6, 7, 8}
	Partner_API.Partner{
		key = "amongusplushie",
		unlocked = true,
		discovered = true,
		pos = {x = 0, y = 0},
		atlas = "TOGAFunnyStatic",
		config = {extra = { odds = 8, mm = 0.25 }},
		loc_vars = function(self, info_queue, card)
			return { vars = { G.GAME.probabilities.normal or 1, card.ability.extra.odds, 100*card.ability.extra.mm } }
		end,
		calculate = function(self, card, context)
			if context.partner_end_of_round and pseudorandom("whenthemoneyissus") < G.GAME.probabilities.normal/card.ability.extra.odds then
				local money = math.floor(math.abs(to_number(G.GAME.dollars)*card.ability.extra.mm))
				money = money > 10 or 10
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_suspartner'), sound = not silent and togabalatro.config.SFXWhenTriggered and "toga_bass"})
				ease_dollars(money)
			end
		end,
		update = function(self, card, context)
			if not card then return end
			local tmult = 16 -- speen speed.
			if G and G.GAME and G.GAME.dollars and to_big(G.GAME.dollars) >= to_big(160) then tmult = math.min(math.floor(to_number(G.GAME.dollars)/10), 3300) end
			local timer, frame_amount = (G.TIMERS.REAL * tmult), #speen
			local wrapped_value = (math.floor(timer) - 1) % frame_amount + 1
			card.children.center:set_sprite_pos({x = speen[wrapped_value], y = 0})
		end,
		display_size = { w = 80, h = 80 }
	}
end