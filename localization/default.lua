return {
	descriptions = {
		Mod = {
			TOGAPack = {
				name = "TOGA's Stuff",
				text = {
					"Personal timewaster project",
					"with a few {C:dark_edition}references{}",
					"here and there.",
					" ",
					"{C:inactive,s:0.8,E:1}Another what-if that became an actual thing...{}"
				}
			}
		},
		Back = {
			b_toga_frogdeck = {
				name = 'Frog Deck',
				text = {
					"{C:attention}+#3#{} {C:attention}Joker{} slot",
					"{C:attention}+#4#{} Consumable slot",
					"{C:attention}+#6#{} hand size, +{C:money}$6{} on start",
					"{C:red}#1#{} hand, {C:red}#2#{} discard",
					"{C:red}X#5#{} base Blind size",
					--"Start with {C:money}$6{} more",
					"{C:inactive,s:0.8}What {C:spectral,s:0.8}secrets{C:inactive,s:0.8} does the frog hold?{}"
				}
			},
			b_toga_spacedeck = {
				name = 'Spaceman Deck',
				text = {
					"Start the run",
					"with a {C:planet,T:j_space}Space Joker{}",
					"{C:planet,T:v_planet_merchant}Planet Merchant{},",
					"{C:planet,T:v_planet_tycoon}Planet Tycoon{}",
					"{C:spectral,s:0.8}Spectral{s:0.8} cards",
					"{s:0.8}may appear in shop"
				}
			},
			b_toga_srb2kartdeck = {
				name = 'Karting Deck',
				text = {
					"Start run with",
					"a special {C:attention,T:j_toga_jokersrb2kart}Karting Joker{}",
					"{C:red}#2#{} {C:attention}Joker{} slots",
					"{C:spectral,s:0.8}Spectral{s:0.8} cards",
					"{s:0.8}may appear in shop"
				}
			},
			b_toga_againdeck = {
				name = 'Deck! Deck! Deck!',
				text = {
					"{C:attention}Retrigger{} scoring cards",
					"once for every {C:attention}Joker{} held.",
					"{C:red}#2#{} {C:attention}Joker{} slots",
					"{C:red}X#1#{} base Blind size"
				}
			},
			b_toga_311deck = {
				name = 'WinDeck 3.11',
				text = {
					"{C:attention}+#2#{} hand size, +{C:money}$#1#{} on start",
					"{C:planet}+#5#{} level to all {C:attention}poker hands{}",
					"{C:red}#3#{} card selection limit",
					"{C:attention}+#4#{} Ante to win"
				}
			},
			b_toga_screamingdeck = {
				name = 'AAAAAAAAAAA',
				text = {
					"Start run with only",
					"{C:attention}Aces{} left in the deck",
					"and a {C:attention,T:tag_coupon}Coupon{} Tag.",
					"{C:red}X#1#{} base Blind size"
				}
			},
		},
		Blind = {
			bl_toga_dialupmodem = {
				name = "The Dial-Up",
				text = {
					"#1# card selection limit"
				}
			},
			bl_toga_worldwideweb = {
				name = "The World Wide Web",
				text = {
					"+#1# card selection limit",
					"and hand size"
				}
			},
			bl_toga_worldwideweb_collection = {
				name = "The World Wide Web",
				text = {
					"The world is at your fingertips",
					"{s:0.8}(Appears if The Dial-Up is cleared){}"
				}
			},
		},
		Joker = {
			j_toga_y2kbug = {
				name = 'Y2K Bug',
				text = {
					"If the played hand contains a",
					"{C:attention}2{} and a {C:attention}King{}, scoring cards",
					"give {C:chips}+#1#{} Chips and {C:red}+#2#{} Mult",
					"{C:inactive,s:0.8}Have you updated your system yet?{}",
				}
			},
			j_toga_controlpanel = {
				name = 'Control Panel',
				text = {
					"Gives {C:money}$#1#{} for every Joker and",
					"Consumable slots at end of round.",
					"Defeating {C:attention}Boss Blinds{} upgrades",
					"individual slot payout by {C:money}$#2#{}.",
					"{C:inactive,s:0.8}(Currently {}{C:money,s:0.8}$#3#{}{C:inactive,s:0.8}){}",
					"{C:inactive,s:0.8}Look at all them settings!{}"
				}
			},
			j_toga_mcanvil = {
				name = 'Anvil',
				text = {
					"Retrigger a scoring card",
					"#1# time(s) per {C:attention}4 Steel Cards{}",
					"in your {C:important}full deck{}.",
					"{C:inactive,s:0.8}(Currently #2#){}"
				}
			},
			j_toga_taskmgr = {
				name = 'Task Manager',
				text = {
					"On {C:attention}last discard{}, {C:red}destroy{}",
					"{C:attention}all{} discarded cards."
				}
			},
			-- Old Task Manager ability, tweaked.
			j_toga_useraccounts = {
				name = 'User Accounts',
				text = {
					"{C:green}#2# in #3#{} chance for scoring cards to",
					"give {X:mult,C:white}XMult{} based on calculated average of",
					"current {C:attention}Joker{} & {C:attention}Consumable{} slots and",
					"{C:chips}hands{} & {C:red}discards{} left.",
					"{C:inactive,s:0.8}(Currently {}{X:mult,C:white,s:0.8}X#1#{}{C:inactive,s:0.8}){}",
				}
			},
			j_toga_jimbo95 = {
				name = 'Start Menu',
				text = {
					"{C:attention}+#1#{} hand size",
					"Retrigger all Jokers #2# time(s).",
					"{X:chips,C:white} X#3# {} Chips, {X:mult,C:white} X#4# {} Mult",
					"{C:inactive,s:0.8}Start Me Up.{}"
				}
			},
			j_toga_solitairejoker = {
				name = 'Solitaire Joker',
				text = {
					"{C:attention}+#1#{} hand size",
					"{C:chips}+#2#{} Chips",
					"{C:chips}-#3#{} hand per round",
					"{C:inactive,s:0.8}An Office regular.{}"
				}
			},
			j_toga_drivespace = {
				name = 'DriveSpace',
				text = {
					"{X:attention,C:white}X#1#{} Blind requirement",
					"when a card {C:attention}scores{}."
				}
			},
			j_toga_win95 = {
				name = 'Windows 95',
				text = {
					"{C:chips}+#1#{} hand(s) & {C:red}+#2#{} discard(s)",
					"upon selecting a {C:attention}Blind{}.",
					"Earn {C:money}$#3#{} at end of round.",
					"If there are {C:attention}#5#{} or fewer",
					"Jokers, get {X:money,C:white}X#4#{} the amount."
				}
			},
			j_toga_win98 = {
				name = 'Windows 98',
				text = {
					"When a card {C:attention}scores{}, {C:attention}#3#%{} of total sell value",
					"of all current Jokers is given as {C:red}Mult{}. {C:inactive,s:0.8}(Currently {C:money,s:0.8}$#4#{C:inactive,s:0.8}){}",
					"Held {C:attention}Consumables{} increase given {C:red}Mult{} by {C:attention}#1#%{} each.",
					"{C:inactive,s:0.8}(Currently #2#%){}"
				}
			},
			j_toga_winmillenium = {
				name = 'Windows ME',
				text = {
					"Each {C:attention}Joker{} held gives {C:chips}+#1#{} Chips.",
					"Increase {C:attention}individual{} Joker bonus by {C:chips}+#2#{} Chips",
					"for every {C:attention}unique Voucher{} redeemed.",
					"{C:inactive,s:0.8}(Currently {}{C:chips,s:0.8}+#3#{}{C:inactive,s:0.8} per Joker){}"
				}
			},
			j_toga_winnt4 = {
				name = 'Windows NT4',
				text = {
					"Retrigger all",
					"played {C:attention}non-face{} cards",
					"#1# time(s).",
					"{C:inactive,s:0.6}Hang on, this is just a{}",
					"{C:inactive,s:0.6}backwards Sock and Buskin!{}"
				}
			},
			j_toga_win2000 = {
				name = 'Windows 2000',
				text = {
					"Generates a random {C:attention}Tag{}",
					"when completing {C:attention}Blinds{}"
				}
			},
			j_toga_winxp = {
				name = 'Windows XP',
				text = {
					"Retrigger {C:attention}scored{} cards,",
					"{C:attention}held in hand{} card abilities",
					"and {C:attention}Jokers{} #1# time."
				}
			},
			j_toga_jokersrb2kart = {
				name = 'Karting Joker',
				text = {
					"Gains {X:mult,C:white}XMult{} when",
					"performing {C:attention}actions{}.",
					"{C:red,s:0.8}Self debuffs if {X:mult,C:white,s:0.8}XMult{C:red,s:0.8} goes below {X:mult,C:white,s:0.8}X1{}{C:red,s:0.8}.{}",
					"{C:inactive}(Currently {}{X:mult,C:white}X#1#{}{C:inactive}){}",
					"{C:inactive,s:0.7}I am literally a racer, what's your excuse?{}"
				}
			},
			j_toga_whatisthis = {
				name = '65 52 72 6F 52',
				text = {
					"Held {C:attention}Consumables{} give",
					"{X:dark_edition,C:white}^^#1#{} Mult each.",
					"{C:inactive,s:0.8}What is this?!{}"
				}
			},
			j_toga_quacksoft = {
				name = 'Duck?',
				text = {
					"{X:dark_edition,C:white}^0.01{} Chips for each",
					"remaining card in the {C:attention}deck{}",
					"{C:inactive,s:0.8}(Currently {}{X:dark_edition,C:white,s:0.8}^#2#{} {C:inactive,s:0.8}Chips){}"
				}
			},
			j_toga_winupdate = {
				name = 'Joker Update',
				text = {
					"{C:attention}Numerical{} values of a random Joker",
					"are increased by {C:attention}#1#%{} when a",
					"{C:attention,s:0.9}Boss Blind{} is defeated.",
					"{C:inactive,s:0.8}Cannot affect self or copies of self.{}"
				}
			},
			j_toga_virtualmemory = {
				name = 'Virtual Memory',
				text = {
					"{C:green}#1# in #2#{} chance for each ",
					"scored card to swap currently",
					"scored {C:chips}Chips{} and {C:mult}Mult{}",
					"{C:inactive,s:0.8}Download more RAM, they said...{}"
				}
			},
			j_toga_recyclebin = {
				name = 'Recycle Bin',
				text = {
					"Right most {C:attention}scoring{} card gives {X:chips,C:white}X#2#{} Chips.",
					"Destroying {C:attention}playing cards{} increases {X:chips,C:white}XChips{}",
					"by {X:chips,C:white}X#1#{} or {X:chips,C:white}X#3#{} if destroyed",
					"card is {C:attention}enhanced{}."
				}
			},
			j_toga_clippit = {
				name = 'Clippit',
				text = {
					"Retrigger all card",
					"{C:attention}held in hand{}",
					"abilities {C:attention}#1#{} times."
				}
			},
			j_toga_asterism = {
				name = 'Asterism',
				text = {
					"{C:mult}+#2#{} Mult per",
					"{C:planet}Planet{} card",
					"used this run",
					"{C:inactive}(Currently {}{C:mult}+#1#{}{C:inactive}){}"
				}
			},
			j_toga_theinternet = {
				name = 'The Internet',
				text = {
					"{C:chips}+#2#{} Chips per",
					"any {C:dark_edition}Consumable{}",
					"used this run",
					"{C:inactive}(Currently {}{C:chips}+#1#{}{C:inactive}){}"
				}
			},
			j_toga_computerlock = {
				name = 'Computer Lock',
				text = {
					"When sold, adjacent",
					"{C:attention}Jokers{} become {C:dark_edition}Eternal{}.",
					"If {C:attention}already{} {C:dark_edition}Eternal{},",
					"remove instead."
				}
			},
			j_toga_bonusducks = {
				name = 'Bonus Ducks',
				text = {
					"All played {C:attention}face{}",
					"cards become",
					"{C:chips}Bonus{} cards",
					"when scored",
				}
			},
			j_toga_pso2ironwill = {
				name = 'Skill: Iron Will',
				text = {
					"When ready and if you have at least {C:money}$1{},",
					"lose all held {C:money}money{}, prevents death and",
					"becomes {C:attention}inactive{}. Recharges after",
					"defeating a {C:attention}Boss Blind{}.",
					"{C:inactive,s:0.8}Currently: #2#{}"
				}
			},
			j_toga_systemrestore = {
				name = 'System Restore',
				text = {
					"When {C:attention}playing cards{} are {C:red}destroyed{}, copy the",
					"{C:attention}first{} destroyed card into the deck with",
					"additional duplicates of it for",
					"{C:attention}each{} other destroyed card.",
				}
			},
			j_toga_spacecadetpinball = {
				name = 'Space Cadet',
				text = {
					"{C:green}#3# in 3{} chance to {C:attention}rescore{} a",
					"random scoring card by this",
					"{C:attention}Joker{}. For every {C:money}$#1#{} held,",
					"try to {C:attention}rescore{} again.",
					"{C:inactive,s:0.8}Currently #2# attempts.{}",
				}
			},
			j_toga_heartyspades = {
				name = 'Hearty Spades',
				text = {
					"{C:hearts}Hearts{} and {C:spades}Spades{}",
					"count as the same suit"
				}
			},
			j_toga_rover = {
				name = 'Rover',
				text = {
					"Each card in the {C:attention}deck{} has a",
					"{C:green}#1# in #2#{} chance to be {C:attention}scored{}",
					"by this Joker"
				}
			},
			j_toga_binaryjkr = {
				name = 'Binary Joker',
				text = {
					"{C:attention}10s{} are",
					"considered as {C:attention}2s{}"
				}
			},
			j_toga_hexadecimaljkr = {
				name = 'Hexadecimal Joker',
				text = {
					"{C:attention}Aces{} are",
					"considered as {C:attention}10s{}"
				}
			},
			j_toga_y2ksticker = {
				name = 'Y2K Sticker',
				text = {
					"{C:attention}2s{} are",
					"considered as",
					"{C:attention}face cards{}"
				}
			},
			j_toga_michaelrosen = {
				name = 'Michael Rosen',
				text = {
					"{C:attention}Each effect{} has a {C:green}#1# in #2#{} chance",
					"to be given by cards {C:attention}held in hand{}.",
					"{C:inactive,s:0.8}*click* Nice.{}"
				}
			},
			j_toga_jimboplus = {
				name = 'JimboPlus!',
				text = {
					"Scoring cards give {X:mult,C:white}XMult{}",
					"depending on {C:attention}Jokers{} currently held.",
					"{C:attention}Jimbos{} give {X:mult,C:white}X#1#{} Mult instead of",
					"{X:mult,C:white}X#2#{} Mult for every other Joker.",
					"{C:inactive}(Currently {}{X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					"{C:inactive,s:0.8}Copies of this Joker{}",
					"{C:inactive,s:0.8}do not contribute to XMult.{}"
				}
			},
			j_toga_speedsneakers = {
				name = 'Speed Shoes',
				text = {
					"{X:mult,C:white}X#1#{} Mult for every {C:money}$#2#{} you have",
					"{C:inactive}(Currently {}{X:mult,C:white}X#3#{} {C:inactive}Mult){}",
				}
			},
			j_toga_tomscott = {
				name = 'Tom Scott',
				text = {
					"Gives {X:mult,C:white}X#1#{} Mult for every",
					"{C:attention}copy{} of itself held",
					"{C:inactive}(Currently {}{X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					"{C:inactive,s:0.8}Stacks multiplicatively.{}",
				}
			},
			j_toga_megasxlr = {
				name = 'Megas XLR',
				text = {
					"{C:attention}8s{} are",
					"considered",
					"as {C:attention}Kings{}"
				}
			},
			j_toga_jarate = {
				name = 'Jarate',
				text = {
					"{C:attention}#1#% Blind{} requirements",
					"when selecting a {C:attention}Boss Blind{}.",
					"Scored cards {C:attention}lose{} their",
					"enhancements, editions and seals.",
					"Recharges when {C:attention}entering{} shop.",
					"{C:inactive,s:0.8}#2#"
				}
			},
			j_toga_goldenwrench = {
				name = 'Golden Wrench',
				text = {
					"Does nothing...",
					"{C:inactive,s:0.8}Wonder what happens if this{}",
					"{C:inactive,s:0.8}happened to be destroyed...{}",
				}
			},
			j_toga_virtualpc = {
				name = 'Virtual PC',
				text = {
					"{C:green}#1# in #2#{} chance to copy",
					"an ability of {C:attention}any{}",
					"compatible {C:attention}Joker{} held"
				}
			},
			j_toga_ie = {
				name = 'Internet Explorer',
				text = {
					"When {C:attention}leaving{} shop, {C:attention}upgrade per-level{} {C:blue}Chips{} and {C:red}Mult{}",
					"of a {C:attention}random{} poker hand by {C:blue}#1#%{} and {C:red}#2#%{} of {C:attention}base{}",
					"{C:blue}Chips{} and {C:red}Mult{} of said poker hand respectively.",
				}
			},
			j_toga_winvista = {
				name = 'Windows Vista',
				text = {
					"If the played hand contains",
					"a single {C:attention}6{}, {C:red}destroy{} it and",
					"convert the existing {C:attention}Edition{} of",
					"a {C:attention}random{} Joker to {C:dark_edition}Negative{}",
					"{C:inactive,s:0.8}(Cannot target already {C:dark_edition,s:0.8}Negative{C:inactive,s:0.8} Jokers.){}",
				}
			},
			j_toga_win7 = {
				name = 'Windows 7',
				text = {
					"Cards {C:attention}held in hand{}",
					"give {X:mult,C:white}X#1#{} Mult for",
					"every {C:blue}Common{} Joker held",
				}
			},
			j_toga_win8 = {
				name = 'Windows 8',
				text = {
					"Each {C:attention}8{} {C:red}discarded{} this round",
					"or in the remaining {C:attention}deck{}",
					"gives {X:mult,C:white}X#1#{} Mult",
				}
			},
		},
		Enhanced = {
			m_toga_notification = {
				name = "Notification",
				text = {
					"{s:0.9}Wherever applicable,",
					"{C:attention,s:0.9}always{s:0.9} gets drawn",
					"{s:0.9}to hand.{}",
				},
			},
			m_toga_coalcoke = {
				name = "Coal Coke Card",
				text = {
					"{C:chips}+#1#{} Chips",
					"while this card",
					"stays in hand",
					"No rank or suit"
				},
			},
			m_toga_iron = {
				name = "Iron Card",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					"while this card",
					"stays in hand",
				},
			},
			m_toga_silver = {
				name = "Silver Card",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
				},
			},
			m_toga_electrum = {
				name = "Electrum Card",
				text = {
					"Earn {C:money}$#1#{} and",
					"{X:mult,C:white}X#2#{} Mult",
					"when scored"
				},
			},
			m_toga_copper = {
				name = "Copper Card",
				text = {
					"{X:chips,C:white}X#1#{} Chips",
					"while this card",
					"stays in hand",
				},
			},
			m_toga_tin = {
				name = "Tin Card",
				text = {
					"Always scores",
				},
			},
			m_toga_bronze = {
				name = "Bronze Card",
				text = {
					"{X:chips,C:white}X#1#{} Chips",
					"while this card",
					"stays in hand",
				},
			},
			m_toga_osmium = {
				name = "Osmium Card",
				text = {
					"{X:chips,C:white}X#1#{} Chips",
				},
			},
		},
		Tarot = {
			c_toga_furnace = {
				name = "Smeltery",
				text = {
					"Processes specific recipes",
					"depending on cards selected",
					"Cost per use: {C:money}$#2#{}",
					"{C:inactive,s:0.8}If you can pay for another{}",
					"{C:inactive,s:0.8}use, keep on use.{}"
				}
			},
			c_toga_furnace_ready = {
				name = "Smeltery",
				text = {
					"Processes specific recipes",
					"depending on cards selected",
					"Current recipe found:",
					"{C:attention,s:0.9}#1#{}",
					" ",
					"Cost per use: {C:money}$#2#{}",
					"{C:inactive,s:0.8}If you can pay for another{}",
					"{C:inactive,s:0.8}use, keep on use.{}"
				}
			},
			c_toga_furnace_novalidrecipe = {
				name = "Smeltery",
				text = {
					"Processes specific recipes",
					"depending on cards selected",
					"{C:inactive,s:0.9}#1#{}",
					"{C:inactive,s:0.8}If you can pay for another{}",
					"{C:inactive,s:0.8}use, keep on use.{}"
				}
			},
			c_toga_miningprospect = {
				name = "Prospect",
				text = {
					"Destroys {T:m_stone,C:attention}Stone Cards{} in the {C:attention}full deck{}.",
					"{C:green}#1# in #2#{} chance for a {T:m_stone,C:attention}Stone Card{} to",
					"convert into a {C:attention}Mineral{} card instead.",
					"{C:inactive,s:0.8}Hold Left SHIFT before hovering over{}",
					"{C:inactive,s:0.8}this card to show the Mineral pool.{}"
				}
			},
			c_toga_miningprospect_showminerals = {
				name = "Prospect",
				text = {
					"Destroys {T:m_stone,C:attention}Stone Cards{} in the {C:attention}full deck{}.",
					"{C:green}#1# in #2#{} chance for a {T:m_stone,C:attention}Stone Card{} to",
					"convert into a {C:attention}Mineral{} card instead.",
				}
			},
		},
		Spectral = {
			c_toga_selfpropelledbomb = {
				name = "Self-Propelled Bomb",
				text = {
					"Destroys up to #1# cards",
					"in the {C:attention}deck{}.",
					"If sold or destroyed, {C:green}#3# in #2#{}",
					"chance to trigger anyway.",
				}
			},
			c_toga_sealingaround = {
				name = "Sealing Around",
				text = {
					"Add a {C:attention}Seal^2{}",
					"to #1# selected",
					"card in your hand"
				}
			},
			c_toga_filesource = {
				name = "Source",
				text = {
					"Enhances up to #1# selected cards",
					"to {C:attention}Notification{} cards",
				}
			},
		},
		Tag = {
			tag_toga_togajokershop = {
				name = "Spare CD Tag",
				text = {
					"Shop has a free",
					"{C:attention}TOGA Joker{}",
				},
			},
			tag_toga_togajokerbooster = {
				name = "Application Tag",
				text = {
					"Gives a free",
					"{C:attention}ZIP Package{}",
				},
			},
			tag_toga_togajokerziparchive = {
				name = "Joker.ZIP Tag",
				text = {
					"Gives a free",
					"{C:attention}Joker.ZIP{}",
				},
			},
			tag_toga_thespbroll = {
				name = "SPB Tag",
				text = {
					"Get a",
					"{C:attention}Self-Propelled{}",
					"{C:attention}Bomb{}"
				},
			},
			tag_toga_guaranteedice = {
				name = "D20 Tag",
				text = {
					"Shop has an",
					"{C:attention}Oops, all 6s{}",
				},
			},
			tag_toga_thenet = {
				name = "Globe Tag",
				text = {
					"Gives a free",
					"{C:spectral}Black Hole{}",
				},
			},
			tag_toga_controlexe = {
				name = "Settings Tag",
				text = {
					"Applies a random {C:dark_edition}edition{}",
					"to a random {C:attention}Joker{}",
					"{C:inactive,s:0.8}May replace current edition{}",
					"{C:inactive,s:0.8}if one is present.{}"
				},
			},
			tag_toga_thelegend = {
				name = "Dragon Tag",
				text = {
					"Shop has a",
					"{C:dark_edition}Legendary{} Joker",
				},
			},
			tag_toga_togarararchive = {
				name = "RAR Tag",
				text = {
					"Gives a free",
					"{C:attention}CONSUMAB.RAR{}",
				},
			},
			tag_toga_togacardcabarchive = {
				name = "Solitaire Tag",
				text = {
					"Gives a free",
					"{C:attention}PLAYCARD.CAB{}",
				},
			},
			tag_toga_togaxcopydnaarchive = {
				name = "XCOPY Tag",
				text = {
					"Gives a free",
					"{C:attention}XCOPY.DNA{}",
				},
			},
		},
		Voucher = {
			v_toga_fat32 = {
				name = "FAT32 Converter",
				text = {
					"{C:attention}+#1#%{} {C:inactive}(of current){} hand size",
					"{C:inactive,s:0.8}(Rounded up.){}"
				},
			},
			v_toga_hardwarewizard = {
				name = "Hardware Wizard",
				text = {
					"Multiplies all {C:attention}listed{} {E:1,C:green}probabilities{}",
					"for the rest of the run by {X:attention,C:white}X#1#{}",
					"{C:inactive}(ex: {}{C:green}1 in 3{}{C:inactive} -> {}{C:green}2 in 3{}{C:inactive}){}"
				},
			},
			v_toga_hardwarewizardxp = {
				name = "Hardware Wizard (XP)",
				text = {
					"Multiplies all {C:attention}listed{} {E:1,C:green}probabilities{}",
					"for the rest of the run by {X:attention,C:white}X#1#{}",
					"{C:inactive}(ex: {}{C:green}2 in 3{}{C:inactive} -> {}{C:green}4 in 3{}{C:inactive}){}"
				},
			},
			v_toga_diskdefrag = {
				name = "Disk Defragmenter",
				text = {
					"{C:red}-#1#{} discard each round.",
					"{C:red}+#1#{} discard after",
					"playing any hand."
				},
			},
			v_toga_mspaint = {
				name = "Microsoft Paint",
				text = {
					"{C:red}#2#{} {C:attention}Joker{} slots",
					"{C:attention}Held in hand{} cards give",
					"{X:dark_edition,C:white}^#1#{} Chips this run"
				},
			},
			v_toga_dataflush = {
				name = "ipconfig /flushdns",
				text = {
					"Discarding hands containing a {C:attention}Flush{}",
					"creates a {C:dark_edition}Negative{} copy of a random",
					"{C:attention}consumable{} card currently held."
				},
			},
			v_toga_dataflush_multiple = {
				name = "ipconfig /flushdns",
				text = {
					"Discarding hands containing a {C:attention}Flush{}",
					"creates #1# {C:dark_edition}Negative{} copies of a random",
					"{C:attention}consumable{} card currently held."
				},
			},
			v_toga_wormsninjarope = {
				name = "Ninja Rope",
				text = {
					"{C:attention}+#1#{} card selection limit",
					"{C:inactive,s:0.8}Hey, this is familiar...{}",
				},
			},
			v_toga_wormsscalesofjustice = {
				name = "Scales of Justice",
				text = {
					"Even the scales.",
					"{C:inactive,s:0.8}Use wisely.{}"
				},
			},
			v_toga_sealegg = {
				name = "Sealing Egg",
				text = {
					"{C:attention,T:j_egg}Eggs{} created by {C:attention,T:toga_sealseal_seal}Seal^2{} have a",
					"{C:green}#1# in #2#{} chance to be {C:dark_edition}Negative{}.",
				},
			},
			v_toga_caniofferyouanegg = {
				name = "Can I Offer You An Egg In These Times",
				text = {
					"{C:attention,T:j_egg}Eggs{} created by {C:attention,T:toga_sealseal_seal}Seal^2{} {E:1,C:green}will{} be {C:dark_edition}Negative{}.",
					--"{E:1,C:green}will{} be {C:dark_edition}Negative{}.",
				},
			},
		},
		Other = {
			toga_sealseal = {
				name = "Seal^2",
				text = {
					"Creates an {C:attention,T:j_egg}Egg",
					"when scored",
					"{C:inactive}(Must have room){}"
				},
			},
			toga_sealseal_alt1 = {
				name = "Seal^2 - Upgraded",
				text = {
					"Creates an {C:attention,T:j_egg}Egg{} when scored",
					"{C:green}#1# in #2#{} chance to be {C:dark_edition}Negative{}",
					"{C:inactive}(Must have room){}",
				},
			},
			toga_sealseal_alt2 = {
				name = "Seal^2 - Upgraded",
				text = {
					"Creates a {C:dark_edition}Negative{}",
					"{C:attention,T:j_egg}Egg{} when scored",
				},
			},
			p_toga_togazipboosterpack = {
				name = "ZIP Package",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} TOGA Jokers",
				},
			},
			p_toga_togaziparchivepack = {
				name = "Joker.ZIP",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} random {C:attention}Jokers{}",
				},
			},
			p_toga_togararpack = {
				name = "CONSUMAB.RAR",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} random {C:attention}Consumables{}",
				},
			},
			p_toga_togacardcabpack = {
				name = "PLAYCARD.CAB",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:attention}Playing{} cards to",
					"add to your deck"
				},
			},
			p_toga_togaxcopydnapack = {
				name = "XCOPY.DNA",
				text = {
					"Choose {C:attention}#1#{} of up to {C:attention}#2#{} {C:attention}copies{} of",
					"{C:attention}Playing{} cards in your deck"
				},
			},
			toga_clippyorigin = {
				name = "Clippit?",
				text = {
					"That's his {C:attention}original{}",
					"name, yes.",
				},
			},
			toga_kartjokerlist = {
				name = "Eligible Actions:",
				text = {
					"{C:attention}Buying{}, {C:money}selling{}, {C:attention}using{},",
					"{C:attention}adding{} cards to deck;",
					"{C:attention}opening{} booster packs;",
					"{C:attention}rerolling{} shop; ({X:mult,C:white}X#1#{})",
					"{C:attention}leaving{} shop. ({X:mult,C:white}X#2#{})",
				},
			},
			toga_kartjokershortcut = {
				name = "Shortcut:",
				text = {
					"Skipping {C:attention}blinds{} or {C:attention}booster packs{}",
					"has a {C:green}#1# in #2#{} chance to gain",
					"{X:mult,C:white}X#3#{} instead of {C:attention}losing{} {C:red}#4#%{}",
					"of currently accumulated {X:mult,C:white}XMult{}.",
				},
			},
			toga_kartjokershortcutspecial = {
				name = "Cutting ahead:",
				text = {
					"Gain {X:mult,C:white}X#1#{} when skipping",
					"{C:attention}blinds{} or {C:attention}booster packs{}",
					"{E:1,C:inactive,s:0.8}Careful to not hit that tree!",
				},
			},
			toga_useraccountsinfo = {
				name = "Formula",
				text = {
					"({C:attention}Joker slots{} + {C:attention}Consumable{} slots",
					"+ {C:blue}hands{} left + {C:red}discards{} left) / 4",
				},
			},
			toga_roseneffects = {
				name = "Possible effects:",
				text = {
					"{C:money}$#1#{}, {X:chips,C:white}X#2#{} Chips, {X:mult,C:white}X#3#{} Mult",
				},
			},
			toga_rosentalismanextra = {
				name = "With Talisman installed",
				text = {
					"{X:dark_edition,C:white}^#1#{} Chips, {X:dark_edition,C:white}^^#2#{} Chips, {X:dark_edition,C:white}^^^#3#{} Chips",
					"{X:dark_edition,C:white}^#4#{} Mult, {X:dark_edition,C:white}^^#5#{} Mult, {X:dark_edition,C:white}^^^#6#{} Mult",
					"{C:inactive,s:0.7}(10x, 20x and 40x less likely to be rolled respectively.){}",
				},
			},
			toga_scales1 = {
				name = "Averages:",
				text = {
					"Joker & Consumable {C:attention}slots{},",
					"{C:attention}hand size{} and {C:attention}card selection limit{}.",
				},
			},
			toga_scales2 = {
				name = "Averages:",
				text = {
					"{C:attention}Poker hand{} {C:planet}levels{}.",
				},
			},
			toga_scales3 = {
				name = "Averages:",
				text = {
					"{C:blue}Hands{} and {C:red}discards{}.",
				},
			},
			toga_alloysteel = {
				name = "Steel Card Recipe",
				text = {
					"1x Iron + 1x Coal Coke (consumed) = 1x Steel",
				},
			},
			toga_alloyelectrum = {
				name = "Electrum Card Recipe",
				text = {
					"1x Gold + 1x Silver = 2x Electrum",
				},
			},
			toga_alloybronze = {
				name = "Bronze Card Recipe",
				text = {
					"3x Copper + 1x Tin = 4x Bronze",
				},
			},
		},
		Partner = {
			pnr_toga_startupdisk={
                name = "Startup Diskette",
                text = {
                    "Reduces {C:attention}Blind requirements{} by {C:attention}#2#%{}",
                    "when {C:attention}Blind{} is selected.",
                },
                unlock={
                    "Used a {C:attention}Windows OS{} Joker",
                    "to win on {C:attention}Gold",
                    "{C:attention}Stake{} difficulty",
                },
            },
			pnr_toga_startupdisk_buff={
                name = "Startup Diskette",
                text = {
                    "Reduces {C:attention}Blind requirements{} by {C:attention}#2#%{}",
                    "when {C:attention}Blind{} is selected, with additional {C:attention}#3#%{}",
					"provided by currently held {C:attention}Windows OS Jokers{}.",
					"{C:inactive}(Currently {C:attention}#1#%{C:inactive})"
                },
                unlock={
                    "Used a {C:attention}Windows OS{} Joker",
                    "to win on {C:attention}Gold",
                    "{C:attention}Stake{} difficulty",
                },
            },
			pnr_toga_amongusplushie={
                name = "Among Us Plushie",
                text = {
                    "{C:green}#1# in #2#{} chance to give {C:attention}bonus{}",
					"{C:money}money{} at end of round.",
					"{C:inactive,s:0.8}#3#% of currently held money or $10,{}",
					"{C:inactive,s:0.8}whichever is higher.{}",
					"{C:inactive,s:0.75}Spin speed is tied to money held.{}"
                },
            },
		}
	},
	misc = {
		suits_singular = {
			-- oops, nothing!
		},
		suits_plural = {
			-- oops, nothing!
		},
		dictionary = {
			togazipboosterpack = "ZIP Package",
			togaziparchivepack = "Joker.ZIP",
			togararpack = "CONSUMAB.RAR",
			togacardcabpack = "PLAYCARD.CAB",
			togaxcopydnapack = "XCOPY.DNA",
			toga_kartouch = "Ouch!",
			toga_karteliminated = "Eliminated!",
			toga_pagefileuse = "Swapped!",
			toga_active = "Active!",
			toga_inactive = "Inactive.",
			toga_updated = "Update!",
			toga_updateready = "Ready!",
			toga_pso2ironwillready = "Ready!",
			toga_pso2ironwillproc = "Procced!",
			toga_pso2ironwillrecharge = "Recharging...",
			toga_pso2ironwillsave = "Iron Will was triggered.",
			toga_systemrestore1 = "Duplicated!",
			toga_userlocked = "Locked!",
			toga_userunlocked = "Unlocked!",
			toga_spbavoidfail = "Hit!",
			toga_spbavoidsuccess = "Safe!",
			toga_bonusapply = "Bonus!",
			toga_anviltrigger = "Hit it!",
			toga_floppypartner = "Floppy!",
			toga_suspartner = "amogus.",
			--
			toga_furnaceprocess = "Smelted...",
			toga_novalidrecipe = "No recipes match selected cards.",
			toga_unknownvalidrecipe = "Unknown valid recipe.",
			toga_steelrecipe = "1x Iron + 1x Coal Coke (consumed) = 1x Steel",
			toga_electrumrecipe = "1x Gold + 1x Silver = 2x Electrum",
			toga_bronzerecipe = "3x Copper + 1x Tin = 4x Bronze",
			toga_alloy = "Alloy",
			toga_crafttarot = "Crafting Tarot",
			toga_minetarot = "Mining Tarot",
			toga_stonenothing = "Nothing...",
			toga_stonefound = "!",
			--
			toga_32bits = "32-bit!",
			toga_jimbo = "...",
			toga_jimbo95txt1 = "Run!",
			toga_jimbo95txt2 = "Again?",
			toga_jimbo95txt3 = "Another one!",
			toga_jimbo95txt4 = "Thread!",
			toga_Echipmod = "^#1# Chips",
			toga_EEchipmod = "^^#1# Chips",
			toga_EEEchipmod = "^^^#1# Chips",
			toga_Emultmod = "^#1# Mult",
			toga_EEmultmod = "^^#1# Mult",
			toga_EEEmultmod = "^^^#1# Mult",
			toga_jaraterecharging = "Waiting for resupply...",
			toga_jaraterestocked = "Resupplied!",
			toga_jarateready = "Ready!",
			toga_jarated = "Washed!",
			toga_perlevel = "per-level",
			toga_configtab = "Mod Settings",
			toga_logtab = "Logging Settings",
			toga_sfxwhenadd = "SFX when getting some of the mods' items",
			toga_sfxwhendel = "SFX when removing some of the mods' items",
			toga_sfxwhenuse = "SFX when some of the mods' items trigger",
			toga_musicpacks = "Custom music for own Booster Packs",
			toga_jokejokers = "Allow 'Joke' items to appear in pool",
			toga_verboselog = "Enable extra logs - [INFO]",
			toga_extraverboselog = "Increase log verbosity - [DEBUG]",
			toga_extraverboselogwarn = "Warning: including [DEBUG] messages may lag your game!",
			toga_startupsfx = "Enable mod startup sound on initial load",
		},
		labels = {
			toga_sealseal_seal = "Seal^2"
		},
		v_dictionary = {
			toga_Echip = {"^#1# Chips"},
			toga_EEchip = {"^^#1# Chips"},
			toga_EEEchip = {"^^^#1# Chips"},
			toga_Emult = {"^#1# Mult"},
			toga_EEmult = {"^^#1# Mult"},
			toga_EEEmult = {"^^^#1# Mult"},
		},
		collab_palettes = {
			toga_oldschool_Spades = { "Original", "Low Contrast (Recoloured)", "High Contrast (Recoloured)", },
			toga_oldschool_Hearts = { "Original", "Low Contrast (Recoloured)", "High Contrast (Recoloured)", },
			toga_oldschool_Clubs = { "Original", "Low Contrast (Recoloured)", "High Contrast (Recoloured)", },
			toga_oldschool_Diamonds = { "Original", "Low Contrast (Recoloured)", "High Contrast (Recoloured)", },
			toga_modern_Spades = { "Classic", "Hearts Deck", "Seasons Deck", "Large Print Deck", },
			toga_modern_Hearts = { "Classic", "Hearts Deck", "Seasons Deck", "Large Print Deck", },
			toga_modern_Clubs = { "Classic", "Hearts Deck", "Seasons Deck", "Large Print Deck", },
			toga_modern_Diamonds = { "Classic", "Hearts Deck", "Seasons Deck", "Large Print Deck", },
		}
	}
}
