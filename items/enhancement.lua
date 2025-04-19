sendInfoMessage("Loading Enhancements...", "TOGAPack")

-- save_run() go brr.
SMODS.Enhancement{
	key = 'notification',
	atlas = "TOGAEnhancements",
	pos = { x = 0, y = 0 },
	calculate = function(self, card, context)
		if ((context.other_drawn and (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.config.center.draw_hand)))
		or (context.first_hand_drawn or context.hand_drawn)) and G.deck and #G.deck.cards > 0 and card and context.cardarea == G.deck then
			draw_card(G.deck, G.hand, nil, "up", true, card)
			G.E_MANAGER:add_event(Event({
				func = function() 
					save_run() -- god.
					return true
				end})
			)
		end
	end
}

SMODS.Enhancement{
	key = 'coalcoke',
	atlas = "TOGAEnhancements",
	pos = { x = 1, y = 0 },
	config = { h_chips = 40 },
	replace_base_card = true,
	no_rank = true,
	no_suit = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_chips } }
	end,
	weight = 15
}

SMODS.Enhancement{
	key = 'iron',
	atlas = "TOGAEnhancements",
	pos = { x = 2, y = 0 },
	config = { h_x_mult = 1.25 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_x_mult } }
	end,
	weight = 12
}

SMODS.Enhancement{
	key = 'silver',
	atlas = "TOGAEnhancements",
	pos = { x = 3, y = 0 },
	config = { x_mult = 1.25 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.x_mult } }
	end,
}

SMODS.Enhancement{
	key = 'electrum',
	atlas = "TOGAEnhancements",
	pos = { x = 4, y = 0 },
	config = { p_dollars = 1, x_mult = 1.5 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.p_dollars, card.ability.x_mult } }
	end,
	weight = 2,
	set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('toga_alloy'), HEX('e4d691'), G.C.WHITE, 1)
    end,
}

SMODS.Enhancement{
	key = 'copper',
	atlas = "TOGAEnhancements",
	pos = { x = 5, y = 0 },
	config = { h_x_chips = 1.5 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_x_chips } }
	end,
}

SMODS.Enhancement{
	key = 'tin',
	atlas = "TOGAEnhancements",
	pos = { x = 6, y = 0 },
	always_scores = true,
	weight = 15
}

SMODS.Enhancement{
	key = 'bronze',
	atlas = "TOGAEnhancements",
	pos = { x = 7, y = 0 },
	config = { h_x_chips = 2.25 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_x_chips } }
	end,
	weight = 1,
	set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('toga_alloy'), HEX('a87544'), G.C.WHITE, 1)
    end,
}

SMODS.Enhancement{
	key = 'osmium',
	atlas = "TOGAEnhancements",
	pos = { x = 8, y = 0 },
	config = { x_chips = 1.25 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.x_chips } }
	end,
}