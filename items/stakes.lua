sendInfoMessage("Loading Stakes...", "TOGAPack")

SMODS.Stake {
	name = "Teal Stake",
	key = "togateal",
	applied_stakes = { "stake_gold" },
	above_stake = "stake_gold",
	stake_level = 9,
	atlas = "TOGAStakes",
	pos = { x = 0, y = 0 },
	sticker_atlas = "TOGAStickers",
	sticker_pos = { x = 0, y = 0 },
	modifiers = function()
		G.GAME.modifiers.toga_chipamtmod = (G.GAME.modifiers.toga_chipamtmod or 1) - 0.1
		G.GAME.modifiers.toga_multamtmod = (G.GAME.modifiers.toga_multamtmod or 1) - 0.1
	end,
	colour = HEX('008282'),
	shiny = true,
	prefix_config = {
		applied_stakes = { mod = false },
		above_stake = { mod = false }
	}
}