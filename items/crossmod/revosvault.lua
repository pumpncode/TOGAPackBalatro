-- Cross-mod stuff for Mineral card pool. Iron, gold and diamonds are valid examples,
-- but bronze and steel are not intended for this pool for being alloys.
sendInfoMessage("Added Diamond cards of Revo's Vault to mineral pool.", "TOGAPack - Revo's Vault")
togabalatro.add_to_oredict('m_crv_diamondcard', 'minerals', true)
if next(SMODS.find_mod('reverse_tarot')) then
	sendInfoMessage("Added Quartz cards of Revo's Vault to mineral pool.", "TOGAPack - Revo's Vault")
	togabalatro.add_to_oredict('m_crv_quartz', 'minerals', true)
end