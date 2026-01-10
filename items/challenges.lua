sendInfoMessage("Loading Challenges...", "TOGAPack")

SMODS.Challenge{
	key = 'jokerful',
	rules = {
		custom = {
			{ id = 'toga_noplayedscore' },
			{ id = 'toga_nohandscore' },
		},
		modifiers = {
			{ id = 'joker_slots', value = 7 },
		},
	},
}

SMODS.Challenge{
	key = 'chipschallenge',
	rules = {
		custom = {
			{ id = 'no_shop_jokers' },
		},
	},
	jokers = {
		{ id = 'j_toga_chipchallenge', eternal = true },
		{ id = 'j_toga_chipchallenge', eternal = true },
		{ id = 'j_toga_chipchallenge', eternal = true },
		{ id = 'j_toga_chipchallenge', eternal = true },
		{ id = 'j_toga_chipchallenge', eternal = true },
	},
}