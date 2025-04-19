sendInfoMessage("Loading Cross-Mod content...", "TOGAPack")

-- Bronze recipe compatibility for Copper from other mods. A bit like the Ore Dictionary of modded Minecraft.
if next(SMODS.find_mod('Bunco')) then
	sendInfoMessage("Bronze recipe can now use Copper from Bunco.", "TOGAPack")
	table.insert(togabalatro.validcopper, 'm_bunc_copper')
end
if next(SMODS.find_mod('reverse_tarot')) then
	sendInfoMessage("Bronze recipe can now use Copper from Reverse Tarots+.", "TOGAPack")
	table.insert(togabalatro.validcopper, 'm_reverse_copper')
end

-- Cross-mod stuff for Mineral card pool. Iron, gold and diamonds are valid examples,
-- but bronze and steel are not intended for this pool for being alloys.
if next(SMODS.find_mod('ortalab')) then
	sendInfoMessage("Adding Ore cards of Ortalab to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_ortalab_ore')
end
if next(SMODS.find_mod('RevosVault')) then
	sendInfoMessage("Adding Diamond cards of Revo's Vault to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_crv_diamondcard')
	sendInfoMessage("Adding Quartz cards of Revo's Vault to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_crv_quartz')
end
if next(SMODS.find_mod('Bunco')) then
	sendInfoMessage("Adding Copper cards of Bunco to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_bunc_copper')
end
if next(SMODS.find_mod('reverse_tarot')) then
	sendInfoMessage("Adding Copper cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_reverse_copper')
	sendInfoMessage("Adding Marble cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_reverse_marble')
	sendInfoMessage("Adding Pyrite cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_reverse_pyrite')
	sendInfoMessage("Adding Iridium cards of Reverse Tarots+ to mineral pool...", "TOGAPack")
	table.insert(togabalatro.validminerals, 'm_reverse_iridium')
end