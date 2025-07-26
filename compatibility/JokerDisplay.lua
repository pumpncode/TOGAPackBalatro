if SMODS.Mods["JokerDisplay"] and SMODS.Mods["JokerDisplay"].can_load then
	if JokerDisplay then
		local jd_def = JokerDisplay.Definitions

		jd_def["j_toga_theinternet"] = {
			 text = {
				{ text = "+" },
				{ ref_table = "card.ability.extra", ref_value = "curchips", retrigger_type = "mult" }
			},
			text_config = { colour = G.C.CHIPS },
		}

		jd_def["j_toga_speedsneakers"] = {
			 text = {
				{
					border_nodes = {
						{ text = "X" },
						{ ref_table = "card.joker_display_values", ref_value = "xmult" },
					}
				}
			},
			calc_function = function(card)
				local total = togabalatro.gethowmuch(card.ability.extra.dollars, card.ability.extra.xmultpart)*card.ability.extra.xmultpart
				card.joker_display_values.xmult = to_big(1)+to_big(total) > to_big(1) and to_big(1)+to_big(total) or to_big(1)
			end,
		}

		jd_def["j_toga_controlpanel"] = {
			text = {
				{ text = "+$" },
				{ ref_table = "card.joker_display_values", ref_value = "totalmoney" },
			},
			text_config = { colour = G.C.GOLD },

			calc_function = function(card)
				card.joker_display_values.totalmoney = math.ceil(card.ability.extra.totalmoney)
			end,
		}
	end
end