sendInfoMessage("Loading Deckskins...", "TOGAPack")

-- Vanilla suites, displayed ranks and ranks to replace.
local suits = {'Hearts', 'Clubs', 'Diamonds', 'Spades'}
local dranks = {'Jack', 'Queen', "King", "Ace"}
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"} 

-- Defining atlases for the original, low and high contrast of Old School atlases.
local rog = SMODS.Atlas{key = "TOGARetroSkinOG", path = "togaoldschoolcards_og.png", px = 71, py = 95}
local rlc = SMODS.Atlas{key = "TOGARetroSkinLC", path = "togaoldschoolcards_lc.png", px = 71, py = 95}
local rhc = SMODS.Atlas{key = "TOGARetroSkinHC", path = "togaoldschoolcards_hc.png", px = 71, py = 95}

-- Extracted .jpg sheet from Windows 7's Solitaire executable. No low/high contrast of these... for now.
local mclassic = SMODS.Atlas{key = "TOGAModernSkinClassic", path = "togamoderncards_classic.png", px = 71, py = 95}
local mhearts = SMODS.Atlas{key = "TOGAModernSkinHearts", path = "togamoderncards_hearts.png", px = 71, py = 95}
local mseason = SMODS.Atlas{key = "TOGAModernSkinSeasons", path = "togamoderncards_seasons.png", px = 71, py = 95}
local mlargep = SMODS.Atlas{key = "TOGAModernSkinLargePrint", path = "togamoderncards_largeprint.png", px = 71, py = 95}

-- A bit easier this way.
for i, suit in ipairs(suits) do
	-- Classic cards.
	SMODS.DeckSkin {
		key = "oldschool_"..suit,
		suit = suit,
		loc_txt = "Classic Windows Cards",
		palettes = {},
	}
	
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_oldschool_'..suit], {
		key = 'toga_oldschool_og', ranks = ranks, display_ranks = dranks, atlas = rog.key,
		loc_txt = {
			['en-us'] = "Original"
		},
	})

	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_oldschool_'..suit], {
		key = 'toga_oldschool_lc', ranks = ranks, display_ranks = dranks, atlas = rlc.key,
		loc_txt = {
			['en-us'] = "Low Contrast (Recoloured)"
		},
	})

	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_oldschool_'..suit], {
		key = 'toga_oldschool_hc', ranks = ranks, display_ranks = dranks, atlas = rhc.key,
		loc_txt = {
			['en-us'] = "High Contrast (Recoloured)"
		},
	})
	
	-- Modern cards.
	SMODS.DeckSkin {
		key = "modern_"..suit,
		suit = suit,
		loc_txt = "Modern Windows Cards",
		palettes = {},
	}
	
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_modern_'..suit], {
		key = 'toga_modern_default', ranks = ranks, display_ranks = dranks, atlas = mclassic.key,
		loc_txt = {
			['en-us'] = "Classic"
		},
	})
	
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_modern_'..suit], {
		key = 'toga_modern_hearts', ranks = ranks, display_ranks = dranks, atlas = mhearts.key,
		loc_txt = {
			['en-us'] = "Hearts Deck"
		},
	})
	
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_modern_'..suit], {
		key = 'toga_modern_seasons', ranks = ranks, display_ranks = dranks, atlas = mseason.key,
		loc_txt = {
			['en-us'] = "Seasons Deck"
		},
	})
	
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['toga_modern_'..suit], {
		key = 'toga_modern_largeprint', ranks = ranks, display_ranks = dranks, atlas = mlargep.key,
		loc_txt = {
			['en-us'] = "Large Print Deck"
		},
	})
end