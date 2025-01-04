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
					"{C:inactive,s:0.8}Another what-if that became an actual thing...{}"
				}
			}
		},
        Back = {
			b_toga_frogdeck = {
				name = 'Frog Deck',
				text = {
					"{C:attention}+#3#{} Joker slot",
					"{C:attention}+#4#{} Consumable slot",
					"{C:attention}+#6#{} hand size",
					"{C:red}#1#{} hand, {C:red}#2#{} discard",
					"{C:red}X#5#{} Blind size{}",
					"{C:inactive,s:0.8}What secrets does the frog hold?{}"
				}
			}
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
					"{C:attention}all{} discarded cards. Gain {C:money}$#1#{} when",
					"a playing card is destroyed.",
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
					"Lose {C:chips}#3#{} hand(s)",
					"at start of round.",
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
					"Each {C:attention}Consumable{} held gives",
					"{C:chips}+#1#{} Chips & {C:red}+#2#{} Mult"
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
			j_toga_jokersrb2kart = {
				name = 'Karting Joker',
				text = {
					"Gains {X:mult,C:white}X#2#{} Mult when {C:attention}cards{} are",
					"{C:money}bought{}/{C:money}sold{}/{C:attention}used{} or when {C:attention}leaving{} shop.",
					"{C:green}#5# in #6#{} chance to gain {X:mult,C:white}X#3#{} Mult",
					"when a {C:attention}Blind{} or {C:attention}Booster Pack{}",
					"is skipped instead of {C:attention}losing{} {C:red}#4#%{}",
					"of currently accumulated {X:mult,C:white}XMult{}.",
					"{C:red,s:0.8}Self debuffs if {X:mult,C:white,s:0.8}XMult{C:red,s:0.8} goes below {X:mult,C:white,s:0.8}X1{}{C:red,s:0.8}.{}",
					"{C:inactive}(Currently {}{X:mult,C:white}X#1#{}{C:inactive}){}",
					"{C:inactive,s:0.7}I am literally a racer, what's your excuse?{}"
				}
			},
			j_toga_whatisthis = {
				name = '???',
				text = {
					"{X:dark_edition,C:white}???^^#1#{}"
				}
			},
			j_toga_quacksoft = {
				name = 'Duck',
				text = {
					"{X:dark_edition,C:white}Quack^#1#{}"
				}
			},
			j_toga_winupdate = {
				name = 'Joker Update',
				text = {
					"{C:attention}Numerical{} values of a random Joker",
					"are increased by {C:attention}#1#%{} when a playing",
					"card is added to deck while active.",
					"{s:0.9}Becomes active after a {C:attention,s:0.9{}Boss Blind{}{s:0.9}.{}",
					"{C:inactive}#2#{}",
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
					"When a {C:attention}playing card{} is destroyed, increase",
					"{X:chips,C:white}XChips{} by {X:chips,C:white}X#1#{} or {X:chips,C:white}X#3#{} if destroyed",
					"card is {C:attention}enhanced{}."
				}
			},
			j_toga_clippit = {
				name = 'Clippit',
				text = {
					"Retrigger all card {C:attention}held in hand{}",
					"abilities {C:attention}#1#{} times. {C:red}-#2#{} hand size",
					"During {C:attention}Boss Blinds{}, {C:attention}+#3#{} hand size.",
					"{C:attention,s:0.9}Warning: {C:legendary,s:0.9}this Joker is slightly janky.{}",
				}
			},
			j_toga_asterism = {
				name = 'Asterism',
				text = {
					"{C:mult}+#2#{} Mult per",
					"{C:planet}Planet{} card used",
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
                    "{C:attention}Jokers{} become {C:dark_edition}Eternal{}"
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
        },
        Enhanced = {
            -- oops, nothing!
        },
        Tarot = {
            -- oops, nothing!
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
        },
        Packet = {
            -- oops, nothing!
        },
        Tag = {
            -- oops, nothing!
        },
        Sleeve = {
			-- oops, nothing!
        },
		Voucher = {
            v_toga_fat32 = {
                name = "FAT32 Converter",
                text = {
                    "{C:attention}+#1#%{} {C:inactive}(of current){} hand size",
					"{C:inactive,s:0.8}(Rounded up.){}"
                },
            },
		},
        Other = {
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
					"{C:attention}#2#{} random Jokers",
				},
			},
			toga_clippyorigin = {
                name = "Clippit?",
                text = {
                    "That's his original",
					"name, yes.",
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
			-- toga_recyclebinclean = "Trashing...",
			toga_userlocked = "Locked!",
			toga_spbavoidfail = "Hit!",
			toga_bonusapply = "Bonus!",
			toga_anviltrigger = "Hit it!",
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
        },
        labels = {
			-- oops, nothing!
        },
        v_dictionary = {
			a_xchips = {"X#1# Chips"},
			toga_Echip = {"^#1# Chips"},
			toga_EEchip = {"^^#1# Chips"},
			toga_EEEchip = {"^^^#1# Chips"},
			toga_Emult = {"^#1# Mult"},
			toga_EEmult = {"^^#1# Mult"},
			toga_EEEmult = {"^^^#1# Mult"},
        }
    }
}
