-- Bronze recipe compatibility for Copper from other mods. A bit like the Ore Dictionary of modded Minecraft.
sendInfoMessage("Bronze recipe can now use Copper from Bunco.", "TOGAPack - Bunco")
togabalatro.add_to_oredict('m_bunc_copper', 'copper', true)
-- Cross-mod stuff for Mineral card pool. Iron, gold and diamonds are valid examples,
-- but bronze and steel are not intended for this pool for being alloys.
sendInfoMessage("Added Copper cards of Bunco to mineral pool.", "TOGAPack - Bunco")
togabalatro.add_to_oredict('m_bunc_copper', 'minerals', true)