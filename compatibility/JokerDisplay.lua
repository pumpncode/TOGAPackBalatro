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
	end
end