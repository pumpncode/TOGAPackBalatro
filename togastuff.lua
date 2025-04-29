-- Header be gone! Moved to togapack.json.
-- This version is for BetterCalc!

-- We are loading...
sendInfoMessage("Hello World! Starting TOGAPack...", "TOGAPack")

-- Define thy map.
SMODS.Atlas{key = "TOGAJokersMain", path = "togajokers.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokersOther", path = "togajokersother.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersOtherDiffSize", path = "togajokersothersize.png", px = 71, py = 95, disable_mipmap = true}
SMODS.Atlas{key = "TOGAJokersWindows", path = "togajokerswinos.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokersUpdate", path = "togajokerupdate.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokerRover", path = "togarover.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGABoosterPack", path = "togabooster.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAConsumables", path = "togacons.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGADeckBack", path = "togadeck.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGATags", path = "togatags.png", px = 34, py = 34}
SMODS.Atlas{key = "TOGASeals", path = "togaseal.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAEnhancements", path = "togaenh.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGADialUpBlind", path = "togadialupblind.png", px = 34, py = 34, atlas_table = 'ANIMATION_ATLAS', frames = 24}
SMODS.Atlas{key = "TOGAWWWBlind", path = "togawwwblind.png", px = 34, py = 34, atlas_table = 'ANIMATION_ATLAS', frames = 32}
SMODS.Atlas{key = "modicon", path = "togaicon.png", px = 32, py = 32}

-- Hear me scream.
SMODS.Sound({key = "win95start", path = "win95start.ogg"}) -- The Microsoft Sound (95 & NT4)
SMODS.Sound({key = "win95tada", path = "win95tada.ogg"}) -- tada.wav (3.x, 95 & NT4)
SMODS.Sound({key = "w96", path = "w96.wav"}) -- Custom Windows Startup
SMODS.Sound({key = "chordold", path = "chordold.wav"}) -- chord.wav (95 & NT4)
SMODS.Sound({key = "chord", path = "chord.wav"}) -- chord.wav (98, ME, 2000 and XP)
SMODS.Sound({key = "win98start", path = "win98start.ogg"}) -- The Microsoft Sound (98) [edited]
SMODS.Sound({key = "win98tada", path = "win98tada.ogg"}) -- tada.wav (98, ME, 2000 and XP)
SMODS.Sound({key = "winme2000start", path = "winmestart.ogg"}) -- Windows Logon Sound for ME/2000 [edited]
SMODS.Sound({key = "winme2000shutdown", path = "winmeshutdown.ogg"}) -- Windows Logoff Sound for ME/2000 [edited]
SMODS.Sound({key = "winnt4start", path = "winnt4start.ogg"}) -- Windows Logon Sound for NT4 [edited]
SMODS.Sound({key = "winnt4shutdown", path = "winnt4shutdown.ogg"}) -- Windows Logoff Sound for NT4 [edited]
SMODS.Sound({key = "winxplogon", path = "Windows XP Logon Sound.wav"}) -- Windows Logon Sound, XP
SMODS.Sound({key = "winxplogoff", path = "Windows XP Logoff Sound.wav"}) -- Windows Logoff Sound, XP
SMODS.Sound({key = "winxpyesyoucan", path = "theexperience.ogg"}) -- Snippet from Windows XP Tour
SMODS.Sound({key = "winxpcritstop", path = "Windows XP Critical Stop.wav"}) -- Critical Stop, XP
SMODS.Sound({key = "winxpballoon", path = "Windows XP Balloon.wav"}) -- Critical Stop, XP
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
SMODS.Sound({key = "thundershield", path = "DSZIO3.ogg"}) -- Thunder Shield
SMODS.Sound({key = "anviluse", path = "mcanviluse.ogg"}) -- Snippet of block.anvil.use, Minecraft
SMODS.Sound({key = "xporb", path = "mcxp.ogg"}) -- Experience, Minecraft
SMODS.Sound({key = "pinballstart", path = "SOUND4.WAV"}) -- Round Start, Plus! 98 - Space Cadet Pinball Demo
SMODS.Sound({key = "pinballloseball", path = "SOUND27.WAV"}) -- Lose Ball, Plus! 98 - Space Cadet Pinball Demo
SMODS.Sound({key = "rosenclick", path = "rosenclick.ogg"}) -- *click* Nice. - Michael Rosen
SMODS.Sound({key = "rosenhello", path = "rosenhello.ogg"}) -- self explanatory, same as above.
SMODS.Sound({key = "rosenbye", path = "rosenthatsashame.ogg"}) -- self explanatory, same as above.
SMODS.Sound({key = "rosenah", path = "rosenah.ogg"}) -- self explanatory, same as above.
SMODS.Sound({key = "scalesofjustice", path = "ScalesOfJustice.wav"}) -- self explanatory, Worms Armageddon/World Party.
SMODS.Sound({key = "failsfx", path = "comedicfail.ogg"}) -- fart.mp3
SMODS.Sound({key = "goldenhit", path = "Saxxy_impact_gen_06.ogg"}) -- getting a kill with a Golden Wrench, Saxxy or Golden Frying Pan, TF2
SMODS.Sound({key = "jaratehit", path = "jar_explode.ogg"}) -- Jarate hitting something, TF2

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

-- wmplayer.exe > balatro♠ost.mid
SMODS.Sound({
	key = "music_balatro98",
	path = "balatro98.ogg",
	select_music_track = function()
		return togabalatro.config.BoosterPackMusic and G.pack_cards and not G.screenwipe and G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER
		and (SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togazipboosterpack' or SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togaziparchivepack'
		or SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togararpack' or SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togacardcabpack'
		or SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togaxcopydnapack')
	end,
})

-- Booster Pack content. So true.
SMODS.ObjectType{
	object_type = "ObjectType",
	key = "TOGAJKR",
	default = "j_toga_win95",
	cards = {
		["j_toga_y2kbug"] = true, ["j_toga_controlpanel"] = true, ["j_toga_mcanvil"] = true,
		["j_toga_taskmgr"] = true, ["j_toga_solitairejoker"] = true, ["j_toga_win95"] = true,
		["j_toga_win98"] = true, ["j_toga_winmillenium"] = true, ["j_toga_winnt4"] = true,
		["j_toga_win2000"] = true, ["j_toga_useraccounts"] = true, ["j_toga_virtualmemory"] = true,
		["j_toga_computerlock"] = true, ["j_toga_recyclebin"] = true, ["j_toga_theinternet"] = true,
		["j_toga_bonusducks"] = true, ["j_toga_spacecadetpinball"] = true, ["j_toga_jokersrb2kart"] = true,
		["j_toga_heartyspades"] = true, ["j_toga_systemrestore"] = true, ["j_toga_mcanvil"] = true, 
		["j_toga_bonusducks"] = true, ["j_toga_speedsneakers"] = true, ["j_toga_internetexplorer"] = true,
		["j_toga_megasxlr"] = true
	}
}

-- I think, therefore, I am.
togabalatro = SMODS.current_mod
togabalatro.config_tab = function() -- didn't expect it to be THIS convoluted... but other mods sure were going this route.
	return {n = G.UIT.ROOT, config = {r = 0.1, align = "cm", padding = 0.1, colour = G.C.BLACK, minw = 7, minh = 2}, nodes = {
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenAdding" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_sfxwhenadd'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenRemoving" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_sfxwhendel'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenTriggered" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_sfxwhenuse'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "BoosterPackMusic" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_musicpacks'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "JokeJokersActive" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_jokejokers'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "DoMoreLogging" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_verboselog'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.75, w = 0, shadow = true, ref_table = togabalatro.config, ref_value = "StartUpSound" },
			}},
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				{ n = G.UIT.T, config = { text = localize('toga_startupsfx'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
	}}
end

togabalatro.description_loc_vars = function(self)
	return {
		scale = 1.25,
		text_colour = HEX('FFFFFF'),
		background_colour = HEX('2B2B2B')
	}
end

togabalatro.optional_features = function()
	return {
		cardareas = { deck = true, discard = true },
		retrigger_joker = true
	}
end

togabalatro.getrandcons = function(seed)
	seed = seed or 'grep'
	local getconspool = get_current_pool('Consumeables')
	local curcons, iter, iterlimit = nil, 0, 2222
	while iter < iterlimit do
		curcons = pseudorandom_element(getconspool, pseudoseed(seed))
		if curcons ~= "UNAVAILABLE" then break end
	end
	if curcons and curcons ~= "UNAVAILABLE" then return curcons else return "c_tower" end
end

sendInfoMessage("Hooking G.FUNCS.can_play...", "TOGAPack")
local canplayref = G.FUNCS.can_play
function G.FUNCS.can_play(e)
	canplayref(e) -- execute original first before we do anything.
	if #G.hand.highlighted <= G.hand.config.highlighted_limit then
		if #G.hand.highlighted >= 52 then -- Cryptid?
			e.config.colour = G.C.EDITION
			e.config.button = 'play_cards_from_highlighted'
		elseif #G.hand.highlighted >= 10 and #G.hand.highlighted < 52 then -- 2x the base and more.
			e.config.colour = G.C.DARK_EDITION
			e.config.button = 'play_cards_from_highlighted'
		elseif #G.hand.highlighted > 5 and #G.hand.highlighted < 10 then -- more than base.
			e.config.colour = G.C.PURPLE
			e.config.button = 'play_cards_from_highlighted'
		end
	end
end

-- As Talisman is now optional and we have some items using this, best keep these.
to_big = to_big or function(a)
	return a
end

to_number = to_number or function(a)
	return a
end

-- Random pitch...
togabalatro.randompitch = function()
	local genvalue = math.random(50, 150)/100
	if togabalatro.config.DoMoreLogging then sendInfoMessage("Random pitch of "..genvalue.." returned.", "TOGAPack") end
	return genvalue
end

-- Rosen sound swap stuff.
togabalatro.rosensfx = { chips1 = true, multhit1 = true, multhit2 = true, coin1 = true, generic1 = true, foil2 = true, xchips = true,
						talisman_xchip = true, talisman_echip = true, talisman_eechip = true, talisman_eeechip = true,
						talisman_emult = true, talisman_eemult = true, talisman_eeemult = true }

sendInfoMessage("Hooking play_sound...", "TOGAPack")
local playsoundref = play_sound
function play_sound(sound_code, per, vol)
	-- ...only if config is set to allow it.
	if togabalatro.config.SFXWhenTriggered and next(SMODS.find_card('j_toga_michaelrosen')) and togabalatro.rosensfx[sound_code] then sound_code = 'toga_rosenclick' end
	
	playsoundref(sound_code, per, vol)
end

-- Y2K Sticker yoink.
sendInfoMessage("Hooking Card:is_face...", "TOGAPack")
local isfaceref = Card.is_face
function Card:is_face(from_boss)
	if self.debuff and not from_boss then return end
	local id = self:get_id()
	if next(SMODS.find_card('j_toga_y2ksticker')) and id == 2 or next(find_joker("Pareidolia")) then
		return true
	end
	return isfaceref(self, from_boss)
end

-- Hexa & Binary Joker yoink.
sendInfoMessage("Hooking Card:get_id...", "TOGAPack")
local getidref = Card.get_id
function Card:get_id()
	local id = getidref(self) or 2
	if next(SMODS.find_card('j_toga_hexadecimaljkr')) and id == 14 then id = 10 end
	if next(SMODS.find_card('j_toga_binaryjkr')) and id == 10 then id = 2 end
	return id
end

-- This still feels hacky, tbh.
sendInfoMessage("Hooking Card:is_suit...", "TOGAPack")
local issuitref = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
	if flush_calc then
		if next(SMODS.find_card('j_toga_heartyspades')) and next(SMODS.find_card('j_smeared'))
		and (self.base.suit == 'Hearts' or self.base.suit == 'Spades' or self.base.suit == 'Diamonds' or self.base.suit == 'Clubs') and (suit == 'Hearts' or suit == 'Spades' or suit == 'Diamonds' or suit == 'Clubs')
		and not SMODS.has_no_rank(self) then
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Hearty Spades + Smeared Joker flush pass.", "TOGAPack") end
			return true
		end
		if next(SMODS.find_card('j_toga_heartyspades')) and (self.base.suit == 'Hearts' or self.base.suit == 'Spades') and (suit == 'Hearts' or suit == 'Spades')
		and not SMODS.has_no_rank(self) then
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Hearty Spades flush pass.", "TOGAPack") end
			return true
		end
		return issuitref(self, suit, bypass_debuff, flush_calc)
	else
		if self.debuff and not bypass_debuff then return end
		if next(SMODS.find_card('j_toga_heartyspades')) and next(SMODS.find_card('j_smeared'))
		and (self.base.suit == 'Hearts' or self.base.suit == 'Spades' or self.base.suit == 'Diamonds' or self.base.suit == 'Clubs') and (suit == 'Hearts' or suit == 'Spades' or suit == 'Diamonds' or suit == 'Clubs')
		and not SMODS.has_no_rank(self) then
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Hearty Spades + Smeared Joker pass.", "TOGAPack") end
			return true
		end
		if next(SMODS.find_card('j_toga_heartyspades')) and (self.base.suit == 'Hearts' or self.base.suit == 'Spades') and (suit == 'Hearts' or suit == 'Spades')
		and not SMODS.has_no_rank(self) then
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Hearty Spades pass.", "TOGAPack") end
			return true
		end
		return issuitref(self, suit, bypass_debuff, flush_calc)
	end
end

-- hooking draw_from_deck_to_hand to remove the 'calculate' from Notification enhancement, replicating it in this hook.
sendInfoMessage("Hooking G.FUNCS.draw_from_deck_to_hand...", "TOGAPack")
local dfwdthref = G.FUNCS.draw_from_deck_to_hand
function G.FUNCS.draw_from_deck_to_hand(e)
	dfwdthref(e)
	if togabalatro.config.DoMoreLogging then sendInfoMessage("Executed original function or (potential) hook.", "TOGAPack") end
	G.E_MANAGER:add_event(Event({
		func = function()
			local allnotifcards = {}
			for i = 1, #G.deck.cards do
				if G.deck.cards[i].config.center_key == 'm_toga_notification' then
					allnotifcards[#allnotifcards+1] = G.deck.cards[i]
				end
			end
			if #allnotifcards > 0 then
				for i = 1, #G.deck.cards do
					for v = 1, #allnotifcards do
						if G.deck.cards[i].config.center_key == 'm_toga_notification' and allnotifcards[v] == G.deck.cards[i] then
							if togabalatro.config.DoMoreLogging then sendInfoMessage("Additionally drawing Notification Card "..i.." ("..G.deck.cards[i].config.card.name..") from the deck...", "TOGAPack") end
							draw_card(G.deck, G.hand, 1, 'up', true, G.deck.cards[i])
						end
					end
				end
				
				G.E_MANAGER:add_event(Event({
					func = function()
						if togabalatro.config.DoMoreLogging then sendInfoMessage("save_run() so the additionally drawn "..#allnotifcards.." cards are set...", "TOGAPack") end
						save_run() -- god.
						return true
					end}))
			end
			return true
		end
	}))
end

-- for Jarate & a Boss & Showdown Blind...
sendInfoMessage("Hooking Blind:defeat...", "TOGAPack")
local blindkillref = Blind.defeat
function Blind:defeat(silent)
	blindkillref(self, silent)
	G.GAME.blind.jarated = nil
	if not G.GAME.dialupmodem and self.name == 'bl_toga_dialupmodem' then G.GAME.dialupmodem = true end
end

-- I've not done such loading since making Windows for SRB2, but as the content is split off from this main file, gotta do it!
for _, file in ipairs{"joker.lua", "deck.lua", "voucher.lua", "enhancement.lua", "consumables.lua", "seal.lua", "booster.lua", "tag.lua", "deckskin.lua", "blind.lua", "crossmod.lua"} do
	sendDebugMessage("Executing items/"..file, "TOGAPack")
	assert(SMODS.load_file("items/"..file))()
end