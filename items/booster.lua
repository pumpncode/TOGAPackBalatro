sendInfoMessage("Loading Booster Packs...", "TOGAPack")

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
	weight = 0.7,
	cost = 10,
	group_key = 'togazipboosterpack',
	config = {extra = 3, choose = 1, name = "ZIP Package"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.choose, card.ability.extra} }
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
	weight = 0.6,
	cost = 20,
	group_key = 'togaziparchivepack',
	config = {extra = 10, choose = 2, name = "Joker.ZIP"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour({ new_colour = HEX("515966"), special_colour = HEX("121417"), contrast = 1.25 }) -- Longhorn, anyone?
	end,
	create_card = function(self, card)
		return create_card("Joker", G.pack_cards, nil, nil, true, true, nil, 'toga')
	end,
}

SMODS.Booster{
	name = "CONSUMAB.RAR",
	key = "togararpack",
	atlas = 'TOGABoosterPack',
	pos = {x = 2, y = 0},
	weight = 0.6,
	cost = 15,
	group_key = 'togararpack',
	config = {extra = 10, choose = 2, name = "CONSUMAB.RAR"},
	draw_hand = true,
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour({ new_colour = HEX("bb1b36"), special_colour = HEX("177c2f"), contrast = 1.25 })
	end,
	create_card = function(self, card)
		return create_card("Consumeables", G.pack_cards, nil, nil, true, true, togabalatro.getrandcons('rar'), 'toga')
	end,
}

SMODS.Booster{
	name = "PLAYCARD.CAB",
	key = "togacardcabpack",
	atlas = 'TOGABoosterPack',
	pos = {x = 3, y = 0},
	weight = 0.35,
	cost = 12,
	group_key = 'togacardcabpack',
	config = {extra = 8, choose = 3, name = "PLAYCARD.CAB"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour({ new_colour = HEX("6BC0FD"), special_colour = HEX("00379D"), contrast = 1.2 })
	end,
	create_card = function(self, card)
		local _edition = poll_edition('standard_edition'..G.GAME.round_resets.ante, 2, true)
		local _seal = SMODS.poll_seal({mod = 10})
		return {set = (pseudorandom(pseudoseed('stdset'..G.GAME.round_resets.ante)) > 0.6) and "Enhanced" or "Base", edition = _edition, seal = _seal, area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "playcardcab"}
	end,
}

SMODS.Booster{
	name = "XCOPY.DNA",
	key = "togaxcopydnapack",
	atlas = 'TOGABoosterPack',
	pos = {x = 4, y = 0},
	weight = 1,
	cost = 10,
	group_key = 'togaxcopydnapack',
	config = {extra = 5, choose = 1, name = "XCOPY.DNA"},
	discovered = false,
	loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.choose, card.ability.extra} }
	end,
	ease_background_colour = function(self)
		ease_background_colour({ new_colour = HEX("DD463C"), special_colour = HEX("008BE3"), contrast = 1.3 })
	end,
	create_card = function(self, card)
		return copy_card(pseudorandom_element(G.deck.cards, pseudoseed('xcopy')), nil, nil, G.playing_card)
	end,
}