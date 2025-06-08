-- We are loading...
sendInfoMessage("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▐▓█▀▀▀▀▀▀▀▀█▓▌░▄▄▄▄▄░░", "TOGAPack")
sendInfoMessage("░█░░░█▀█░█▀█░█▀▄░█░█▄░█░█▀▀░░░░░░░░▐▓█░░░░░░░░█▓▌░█▄▄▄█░░", "TOGAPack")
sendInfoMessage("░█░░░█░█░█▀█░█░█░█░█░▀█░█░█░░░░░░░░▐▓█░░░░░░░░█▓▌░█▄▄▄█░░", "TOGAPack")
sendInfoMessage("░▀▀▀░▀▀▀░▀░▀░▀▀░░▀░▀░░▀░▀▀▀░░▀░▀░▀░▐▓█▄▄▄▄▄▄▄▄█▓▌░█████░░", "TOGAPack")
sendInfoMessage("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▄▄██▄▄░░░░░█████░░", "TOGAPack")
sendInfoMessage("Hello World! Starting TOGAPack...", "TOGAPack")
sendWarnMessage("             ░░░               ", "TOGAPack")
sendWarnMessage("           ░░░░░░██            ", "TOGAPack")
sendWarnMessage("          ░░░░░░░░██           ", "TOGAPack")
sendWarnMessage("         ░░░░░░░░░░██          ", "TOGAPack")
sendWarnMessage("         ░░░░▒▓▒░░░▒██         ", "TOGAPack")
sendWarnMessage("        ░░░░█████░░░▒██        ", "TOGAPack")
sendWarnMessage("       ░░░░░█████░░░░▓██       ", "TOGAPack")
sendWarnMessage("      ░░░░░░░███▒░░░░░▓██      ", "TOGAPack")
sendWarnMessage("     ░░░░░░░░███░░░░░░░██      ", "TOGAPack")
sendWarnMessage("    ░░░░░░░░░▒█▓░░░░░░░░██     ", "TOGAPack")
sendWarnMessage("   ░░░░░░░░░░░█▒░░░░░░░░░██    ", "TOGAPack")
sendWarnMessage("  ░░░░░░░░░░░░░░░░░░░░░░░░██   ", "TOGAPack")
sendWarnMessage("  ░░░░░░░░░░▒███▓░░░░░░░░░▒██  ", "TOGAPack")
sendWarnMessage(" ░▒░░░░░░░░░█████░░░░░░░░░░▒██ ", "TOGAPack")
sendWarnMessage("░▒▒▒░░░░░░░░░▓█▓░░░░░░░░░▒▒▒███", "TOGAPack")
sendWarnMessage(" ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████", "TOGAPack")
sendWarnMessage("   ███████████████████████████ ", "TOGAPack")
sendWarnMessage("WARNING! This is not a stable release and may contain unfinished, broken or unused content!", "TOGAPack")

-- Define thy map.
SMODS.Atlas{key = "TOGAJokersMain", path = "togajokers.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokersOther", path = "togajokersother.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersOtherDiffSize", path = "togajokersothersize.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersWindows", path = "togajokerswinos.png", px = 72, py = 95}
SMODS.Atlas{key = "TOGAJokersMac", path = "togamacos.png", px = 71, py = 95}
SMODS.Atlas{key = "TOGAJokersLinux", path = "togalinuxos.png", px = 71, py = 95}
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
SMODS.Atlas{key = "TOGAJoyStickBlind", path = "togajoystickblind.png", px = 34, py = 34, atlas_table = 'ANIMATION_ATLAS', frames = 1}
SMODS.Atlas{key = "TOGAMoreIcons", path = "togamoricons.png", px = 36, py = 36, disable_mipmap = true}
SMODS.Atlas{key = "TOGAFunny", path = "togazefunny.png", px = 64, py = 64, atlas_table = 'ANIMATION_ATLAS', frames = 9}
SMODS.Atlas{key = "TOGAFunnyStatic", path = "togazefunny.png", px = 64, py = 64}
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
SMODS.Sound({key = "winxpinfobar", path = "Windows XP Information Bar.wav"}) -- Critical Stop, XP
SMODS.Sound({key = "winvista78logon", path = "winvista78logon.wav"}) -- Startup/Logon, Vista, 7 & 8.x
SMODS.Sound({key = "winvista78logoff", path = "winvista78logoff.wav"}) -- Logoff, Vista, 7 & 8.x
SMODS.Sound({key = "winvista7critstop", path = "winvista7critstop.wav"}) -- Critical Stop, Vista, 7
SMODS.Sound({key = "win8error", path = "win8bg.wav"}) -- Windows Background, 8.x
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
SMODS.Sound({key = "w95restup", path = "Windows 95 restore up.ogg"}) -- Plus! 95, Windows 95 restore up.wav
SMODS.Sound({key = "bass", path = "bass.ogg"}) -- Roblox Bass / Kik-Arse Bass Soundfont (2007) / Zero-G Sample Disc Bass 4 (1990s)

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
		or SMODS.OPENED_BOOSTER.config.center.key == 'p_toga_togaxcopydnapack') and 2
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
		["j_toga_win2000"] = true, ["j_toga_winvista"] = true, ["j_toga_win7"] = true,
		["j_toga_win8"] = true, ["j_toga_useraccounts"] = true, ["j_toga_virtualmemory"] = true,
		["j_toga_computerlock"] = true, ["j_toga_recyclebin"] = true, ["j_toga_theinternet"] = true,
		["j_toga_bonusducks"] = true, ["j_toga_spacecadetpinball"] = true, ["j_toga_jokersrb2kart"] = true,
		["j_toga_heartyspades"] = true, ["j_toga_systemrestore"] = true, ["j_toga_mcanvil"] = true, 
		["j_toga_bonusducks"] = true, ["j_toga_speedsneakers"] = true, ["j_toga_internetexplorer"] = true,
		["j_toga_megasxlr"] = true, ["j_toga_mac_os_9"] = true, ["j_toga_mac_os_x"] = true,
		["j_toga_linux_ubuntu"] = true, ["j_toga_linux_debian"] = true, ["j_toga_linux_slackware"] = true,
		["j_toga_linux_redhat"] = true
	}
}

-- I think, therefore, I am.
togabalatro = SMODS.current_mod

togabalatro.config_tab = function()
	return {n = G.UIT.ROOT, config = {align = "cl", outline = 0.5, outline_colour = HEX('C3C3C3'), padding = 0.025, colour = G.C.UI.BACKGROUND_INACTIVE, minw = 7, minh = 2}, nodes = {
		{n = G.UIT.R, config = {align = "cl", outline = 0.35, outline_colour = HEX('C3C3C3'), colour = HEX('000082')}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
				{n = G.UIT.O, config = { w = 0.75, h = 0.75, object = Sprite(36, 36, 36, 36, G.ASSET_ATLAS['toga_TOGAMoreIcons'], { x = 0, y = 0 }) } },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_configtab'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenAdding" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_sfxwhenadd'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenRemoving" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_sfxwhendel'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "SFXWhenTriggered" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_sfxwhenuse'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "BoosterPackMusic" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_musicpacks'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "JokeJokersActive" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_jokejokers'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
		{n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
			{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
				create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "StartUpSound" },
			}},
			{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
				{n = G.UIT.T, config = { text = localize('toga_startupsfx'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
			}},
		}},
	}}
end

togabalatro.extra_tabs = function()
	return {
		{ label = 'Logging', tab_definition_function = function()
			return {n = G.UIT.ROOT, config = {align = "cl", outline = 0.65, outline_colour = HEX('C3C3C3'), padding = 0.025, colour = G.C.UI.BACKGROUND_INACTIVE, minw = 7, minh = 2}, nodes = {
				{n = G.UIT.R, config = {align = "cl", outline = 0.35, outline_colour = HEX('C3C3C3'), colour = HEX('000082')}, nodes = {
					{n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
						{n = G.UIT.O, config = { w = 0.75, h = 0.75, object = Sprite(36, 36, 36, 36, G.ASSET_ATLAS['toga_TOGAMoreIcons'], { x = 2, y = 0 }) } },
					}},
					{n = G.UIT.C, config = { align = "cl", padding = 0 }, nodes = {
						{n = G.UIT.T, config = { text = localize('toga_logtab'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
					}},
				}},
				{n = G.UIT.R, config = {align = "cl", padding = 0 }, nodes = {
					{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
						create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "DoMoreLogging" },
					}},
					{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
						{n = G.UIT.T, config = { text = localize('toga_verboselog'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
					}},
				}},
				{n = G.UIT.R, config = {align = "cl", padding = 0 }, nodes = {
					{n = G.UIT.C, config = { align = "cl", padding = -0.25 }, nodes = {
						create_toggle{ col = true, label = "", scale = 0.85, w = 0.15, shadow = true, ref_table = togabalatro.config, ref_value = "DoEvenMoreLogging" },
					}},
					{n = G.UIT.C, config = { align = "cl", padding = 0.2 }, nodes = {
						{n = G.UIT.T, config = { text = localize('toga_extraverboselog'), scale = 0.5, colour = G.C.UI.TEXT_LIGHT }},
					}},
				}},
				{n = G.UIT.R, config = {align = "cm", padding = 0, outline = 0.5, outline_colour = HEX('491A19'), colour = HEX('7A2D29')}, nodes = {
					{n = G.UIT.C, config = { align = "cm", padding = 0}, nodes = {
						{n = G.UIT.O, config = { w = 0.66, h = 0.66, object = Sprite(36, 36, 36, 36, G.ASSET_ATLAS['toga_TOGAMoreIcons'], { x = 1, y = 0 }) } },
					}},
					{n = G.UIT.C, config = { align = "cm", padding = 0.05 }, nodes = {
						{n = G.UIT.T, config = { text = localize('toga_extraverboselogwarn'), scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
					}},
				}},
			}}
		end}
	}
end

togabalatro.custom_ui = function(modNodes)
	if math.random(1, 10) == 5 then
		table.insert(modNodes, #modNodes+1, {n = G.UIT.R, config = {r = 0.1, align = "cm", padding = 0.1}, nodes = {
			{n = G.UIT.C, config = { align = "cm", padding = 0.05 }, nodes = {
				{n = G.UIT.O, config = { w = 1, h = 1, object = AnimatedSprite(0, 0, 1, 1, G.ANIMATION_ATLAS['toga_TOGAFunny'], { x = 0, y = 0 }) } },
			}},
		}})
	end
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

togabalatro.iswindows = function(card)
	if card.config.center.key == 'j_toga_win95' or card.config.center.key == 'j_toga_win98'
	or card.config.center.key == 'j_toga_win98' or card.config.center.key == 'j_toga_winmillenium'
	or card.config.center.key == 'j_toga_win2000' or card.config.center.key == 'j_toga_winxp'
	or card.config.center.key == 'j_toga_winvista' or card.config.center.key == 'j_toga_win7'
	or card.config.center.key == 'j_toga_win8' then return true end
end

-- Still kept for colouring the button with higher allowed amount of cards to play, but also backwards compat.
sendInfoMessage("Hooking G.FUNCS.can_play...", "TOGAPack")
local canplayref = G.FUNCS.can_play
function G.FUNCS.can_play(e)
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("G.FUNCS.can_play hook.", "TOGAPack") end
	canplayref(e) -- execute original first before we do anything.
	if #G.hand.highlighted <= G.hand.config.highlighted_limit then
		if #G.hand.highlighted >= 52 then -- Cryptid?
			e.config.colour = G.C.EDITION
			if not togabalatro.handlimitapi() then e.config.button = 'play_cards_from_highlighted' end
		elseif #G.hand.highlighted >= 10 and #G.hand.highlighted < 52 then -- 2x the base and more.
			e.config.colour = G.C.DARK_EDITION
			if not togabalatro.handlimitapi() then e.config.button = 'play_cards_from_highlighted' end
		elseif #G.hand.highlighted > 5 and #G.hand.highlighted < 10 then -- more than base.
			e.config.colour = G.C.PURPLE
			if not togabalatro.handlimitapi() then e.config.button = 'play_cards_from_highlighted' end
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
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("play_sound hook.", "TOGAPack") end
	if togabalatro.config.SFXWhenTriggered and next(SMODS.find_card('j_toga_michaelrosen')) and togabalatro.rosensfx[sound_code] then sound_code = 'toga_rosenclick' end
	if G and G.GAME and G.GAME.blind and G.GAME.blind.boss and G.GAME.blind.config.blind.key == 'bl_toga_xpboss' then sound_code = 'toga_winxpcritstop' end
	
	playsoundref(sound_code, per, vol)
end

-- Y2K Sticker yoink.
local ischecking2s = false
sendInfoMessage("Hooking Card:is_face...", "TOGAPack")
local isfaceref = Card.is_face
function Card:is_face(from_boss)
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("Card:is_face hook.", "TOGAPack") end
	if next(SMODS.find_card('j_toga_y2ksticker')) then
		if not ischecking2s then
			ischecking2s = true
			if self:get_id() == 2 then ischecking2s = false; return true end
		end
		ischecking2s = false
	end
	ischecking2s = false
	return isfaceref(self, from_boss)
end

-- Hexa & Binary Joker yoink.
local getiduse = false
sendInfoMessage("Hooking Card:get_id...", "TOGAPack")
local getidref = Card.get_id
function Card:get_id()
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("Card:get_id hook.", "TOGAPack") end
	if not getiduse then
		getiduse = true
		local id = getidref(self) or self.base.id
		if next(SMODS.find_card('j_toga_megasxlr')) and id == 8 then id = 13 end
		if next(SMODS.find_card('j_toga_hexadecimaljkr')) and id == 14 then id = 10 end
		if next(SMODS.find_card('j_toga_binaryjkr')) and id == 10 then id = 2 end
		getiduse = false
		return id
	else
		getiduse = false
		return getidref(self)
	end
end

-- This still feels hacky, tbh.
sendInfoMessage("Hooking Card:is_suit...", "TOGAPack")
local issuitref = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("Card:get_is_suit hook.", "TOGAPack") end
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

-- This really shuffled my brain...
sendInfoMessage("Hooking CardArea:shuffle...", "TOGAPack")
local sonicshuffle = CardArea.shuffle
function CardArea:shuffle(_seed)
	local r = sonicshuffle(self, _seed)
	if self == G.deck then
		local otherc, smsc = {}, {}
		for i, k in ipairs(self.cards) do
			if k.config.center_key == 'm_toga_sms' then
				smsc[#smsc+1] = k
			else
				otherc[#otherc+1] = k
			end
		end
		for _, card in ipairs(otherc) do
			table.insert(smsc, card)
		end
		self.cards = smsc
		self:set_ranks()
	end
	return r
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

-- for Jarate & a Boss/Showdown Blind...
sendInfoMessage("Hooking Blind:defeat...", "TOGAPack")
local blindkillref = Blind.defeat
function Blind:defeat(silent)
	if togabalatro.config.DoMoreLogging and togabalatro.config.DoEvenMoreLogging then sendDebugMessage("Blind:defeat hook.", "TOGAPack") end
	blindkillref(self, silent)
	G.GAME.blind.jarated = nil
	if not G.GAME.dialupmodem and self.name == 'bl_toga_dialupmodem' then G.GAME.dialupmodem = true end
end

-- no disabley. :)
sendInfoMessage("Hooking Blind:disable...", "TOGAPack")
local bldisref = Blind.disable
function Blind:disable()
    if self.debuff.toga_no_disable then
        play_sound('toga_winxpcritstop', 1, 0.5)
        return
    end
    return bldisref(self)
end

function ReverseTable(t)
	local rt = {}
	for i = #t, 1, -1 do
		rt[#rt+1] = t[i]
	end
	return rt
end

function ShuffleMyTable(t, seed)
	seed = seed or 'shuffley'
	local rt = {}
	for i = 1, #t do
		rt[#rt+1] = t[i]
	end
	pseudoshuffle(rt, pseudoseed(seed))
	return rt
end

-- emem eht era uoy :VOP --
togabalatro.forcereverse = false
togabalatro.preprocess = function(context, input)
	local output = input or context.cardarea and context.cardarea.cards or nil
	if not output then
		if context.cardarea == G.play then output = context.full_hand
		elseif context.cardarea == G.hand then output = G.hand.cards
		elseif context.cardarea == 'unscored' then output = context.full_hand end
	end
	
	if not output then return end
	
	if G.GAME.modifiers.toga_reversedscore then output = ReverseTable(output) end
	if G.GAME.modifiers.toga_reversedscore_sleeve then output = ReverseTable(output) end
	if togabalatro.forcereverse then output = ReverseTable(output) end
	if G.GAME.modifiers.toga_randomscore then output = ShuffleMyTable(output, 'whotouchmygun') end
	
	return output
end

togabalatro.areaprocess = function(t)
	if t == nil then return {} end
	
	local output = t
	
	if G.GAME.modifiers.toga_reversedscore then output = ReverseTable(output) end
	if G.GAME.modifiers.toga_reversedscore_sleeve then output = ReverseTable(output) end
	if G.GAME.modifiers.toga_randomscore then output = ShuffleMyTable(output, 'whotouchmygun') end
	
	return output
end

-- Hooking to do more funky scoring shenanigans.
sendInfoMessage("Hooking SMODS.calculate_main_scoring...", "TOGAPack")
local calcmainscoreref = SMODS.calculate_main_scoring
function SMODS.calculate_main_scoring(context, scoring_hand)
	calcmainscoreref(context, scoring_hand)
	if G.GAME and G.GAME.modifiers and G.GAME.modifiers.toga_reversedscore_special_kart then
		togabalatro.forcereverse = true
		context.main_scoring = true
		calcmainscoreref(context, scoring_hand)
		togabalatro.forcereverse = false
		context.main_scoring = nil
	end
	local spacecadet, rover = SMODS.find_card('j_toga_spacecadetpinball'), SMODS.find_card('j_toga_rover')
	if context.cardarea == G.play then
		if next(spacecadet) then
			for i = 1, #spacecadet do
				context.main_scoring = true
				local card = spacecadet[i]
				card.ability.extra.alltrig = togabalatro.cashpointmulitple(card.ability.extra.cashpoint)
				for r = 1, card.ability.extra.alltrig do
					if (pseudorandom("toga_spacecadetpinball") < G.GAME.probabilities.normal/3 or card.ability.cry_rigged) and scoring_hand then
						if not card.ability.pinballscore then card.ability.pinballscore = true; card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_pinballing')}) end
						SMODS.score_card(pseudorandom_element(context.scoring_hand, pseudoseed('spacecadet')), context)
					end
				end
				context.main_scoring = nil
			end
		end
		if next(rover) then
			for r = 1, #rover do
				local card = rover[r]
				for i = 1, #G.deck.cards do
					if (pseudorandom("toga_rover") < G.GAME.probabilities.normal/card.ability.extra.odds or card.ability.cry_rigged) then
						if not card.ability.roverscore then card.ability.roverscore = true; card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('toga_roverwoof')}) end
						SMODS.score_card(G.deck.cards[i], context)
					end
				end
			end
		end
	end
	if context.cardarea == G.hand then
		context.main_scoring = true
		local areas = togabalatro.areaprocess(SMODS.get_card_areas('playing_cards'))
		for _, area in ipairs(areas) do
			if area ~= G.hand then
				local curcards = togabalatro.preprocess(context, area.cards)
				for _, card in ipairs(curcards) do
					if card.seal == 'toga_urlseal' then
						SMODS.score_card(card, context)
					end
				end
			end
		end
		context.main_scoring = nil
	end
end

-- Yoinked from original SMODS.calculate_end_of_round_effects, but edited to target specific cards.
-- 100% hacky, there should be a better way for doing this...
togabalatro.eorproc = function(area, card, context, i)
	if card.seal ~= 'toga_urlseal' then return end
	local reps = {1}
	local j = 1
	while j <= #reps do
		percent = percent or (i-0.999)/(#area.cards-0.998) + (j-1)*0.1
		if reps[j] ~= 1 then
			local _, eff = next(reps[j])
			SMODS.calculate_effect(eff, eff.card)
			percent = percent + 0.08
		end

		context.playing_card_end_of_round = true
		local effects = {eval_card(card, context)}
		SMODS.calculate_quantum_enhancements(card, effects, context)

		context.playing_card_end_of_round = nil
		context.individual = true
		context.other_card = card

		SMODS.calculate_card_areas('jokers', context, effects, { main_scoring = true })
		SMODS.calculate_card_areas('individual', context, effects, { main_scoring = true })

		local flags = SMODS.trigger_effects(effects, card)

		context.individual = nil
		context.repetition = true
		context.card_effects = effects
		if reps[j] == 1 then
			SMODS.calculate_repetitions(card, context, reps)
		end

		context.repetition = nil
		context.card_effects = nil
		context.other_card = nil
		j = j + (flags.calculated and 1 or #reps)
	end
end

-- Hooking to run it back.
sendInfoMessage("Hooking SMODS.calculate_end_of_round_effects...", "TOGAPack")
local calcendroundref = SMODS.calculate_end_of_round_effects
function SMODS.calculate_end_of_round_effects(context)
	calcendroundref(context)
	if G.GAME and G.GAME.modifiers and G.GAME.modifiers.toga_reversedscore_special_kart then
		togabalatro.forcereverse = true
		calcendroundref(context)
		togabalatro.forcereverse = false
	end
	-- This bit is 100% experimental... there should be a better way for doing this, right?
	local areas = togabalatro.areaprocess(SMODS.get_card_areas('playing_cards'))
	if context.cardarea == G.hand then
		local contextcopy = context
		contextcopy.cardarea = G.hand
		for i, area in ipairs(areas) do
			if area ~= G.hand and area.cards then
				for _, card in ipairs(area.cards) do
					if card.seal == 'toga_urlseal' then
						togabalatro.eorproc(area, card, contextcopy, i)
					end
				end
			end
		end
	end
end

-- Check for HandLimitAPI...
togabalatro.handlimitapi = function()
	return (SMODS.change_play_limit and SMODS.change_discard_limit and SMODS.update_hand_limit_text) or false
end

-- Using HandLimitAPI if possible.
togabalatro.handlimitchange = function(val, set_to)
	val = val or 0
	if togabalatro.handlimitapi() then
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Using HandLimitAPI. "..tostring(set_to).." "..val, "TOGAPack") end
		SMODS.change_play_limit(set_to and G.GAME.starting_params.play_limit - val or val)
		SMODS.change_discard_limit(set_to and G.GAME.starting_params.discard_limit - val or val)
	else
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Backwards compatibility... "..val, "TOGAPack") end
		G.hand.config.highlighted_limit = math.max(G.hand.config.highlighted_limit + val, val < 0 and 1 or 5)
	end
end

-- Golden Wrench...
local startdisref = Card.start_dissolve
function Card:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice)
	if self and self.config and self.config.center_key == 'j_toga_goldenwrench' and not self.ability.sold then togabalatro.goldenwrench(self) end
	startdisref(self, dissolve_colours, silent, dissolve_time_fac, no_juice)
end

-- Golden Wrench destruction...
togabalatro.goldenwrench = function(card)
	if card and card.config and card.config.center_key ~= 'j_toga_goldenwrench' then return end
	G.E_MANAGER:add_event(Event({
		func = function()
			for i = 1, #G.playing_cards do
				G.playing_cards[i]:set_ability(G.P_CENTERS.m_gold)
				G.playing_cards[i]:juice_up()
			end
			if togabalatro.config.SFXWhenTriggered and not silent then play_sound('toga_goldenhit', 1, 0.7) end -- insert sound here.
			return true
		end
	}))
end

-- Play more cards! For the SMS enhancement.
togabalatro.playextracards = function()
	local sms_deck = {}
	if G.deck.cards and #G.deck.cards > 0 then
		for i = 1, #G.deck.cards do
			if G.deck.cards[i].config.center_key == 'm_toga_sms' then
				sms_deck[#sms_deck+1] = G.deck.cards[i]
			end
		end
	end
	if #sms_deck > 0 then
		for i = 1, #G.deck.cards do
			for v = 1, #sms_deck do
				if G.deck.cards[i].config.center_key == 'm_toga_sms' and sms_deck[v] == G.deck.cards[i] then
					if G.deck.cards[i]:is_face() then inc_career_stat('c_face_cards_played', 1) end
					G.deck.cards[i].base.times_played = G.deck.cards[i].base.times_played + 1
					G.deck.cards[i].ability.played_this_ante = true
					G.GAME.round_scores.cards_played.amt = G.GAME.round_scores.cards_played.amt + 1
					draw_card(G.deck, G.play, i*100/#sms_deck, 'up', nil, G.deck.cards[i])
				end
			end
		end
	end
end

togabalatro.getconscount = function()
	local count = 0
	if G.consumeables and G.consumeables.cards then
		for i = 1, #G.consumeables.cards do
			local stack, stackamount = togabalatro.stackingcompat(G.consumeables.cards[i])
			if stack then count = count + stackamount else count = count + 1 end
		end
	end
	return count
end

-- Check for Overflow or Incantation...
togabalatro.stackingcompat = function(consumable)
	-- The new and shiny Overflow!
	if Overflow and consumable and consumable.ability.immutable and consumable.ability.immutable.overflow_amount then
		return true, consumable.ability.immutable.overflow_amount
	-- ...though, backwards compatibility wouldn't hurt...
	elseif Incantation and consumable and consumeable.ability and consumeable.ability.qty then
		return true, consumeable.ability.qty
	end
end

-- In case Incantation is used, check if it is the specific fork version so that the consumeables don't do unintended things...
if SMODS.Mods['incantation'] and not SMODS.Mods['incantation'].togafork and not string.find(SMODS.Mods['incantation'].version, '-TOGA_fork') then
	error("Please obtain TheOneGoofAli's fork of Incantation to prevent unintended behaviour of the consumeables added by "..togabalatro.name, 0)
end

-- I've not done such loading since making Windows for SRB2, but as the content is split off from this main file, gotta do it!
for _, file in ipairs{"joker.lua", "deck.lua", "voucher.lua", "enhancement.lua", "consumables.lua", "seal.lua", "booster.lua", "tag.lua", "deckskin.lua", "blind.lua", "crossmod.lua"} do
	sendDebugMessage("Executing items/"..file, "TOGAPack")
	assert(SMODS.load_file("items/"..file))()
end