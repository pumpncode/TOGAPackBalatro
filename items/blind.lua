sendInfoMessage("Loading Blinds...", "TOGAPack")

SMODS.Blind{
	key = 'dialupmodem',
	atlas = 'TOGADialUpBlind',
	boss_colour = HEX('404080'),
	pos = { x = 0, y = 0 },
	vars = { reducedhandsel = 1, activated = false },
	dollars = 6,
	mult = 5.6,
	boss = { min = 4 },
	loc_vars = function(self)
		return { vars = { -self.vars.reducedhandsel } }
	end,
	collection_loc_vars = function(self)
		return { vars = { -self.vars.reducedhandsel  } }
	end,
	set_blind = function(self)
		self.vars.activated = true
		G.hand.config.highlighted_limit = math.max(G.hand.config.highlighted_limit - self.vars.reducedhandsel, 1)
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Decreased card selection limit to "..G.hand.config.highlighted_limit..".", "TOGAPack") end
	end,
	disable = function(self)
		if self.vars.activated then
			self.vars.activated = false
			G.hand.config.highlighted_limit = math.min(G.hand.config.highlighted_limit + self.vars.reducedhandsel, 5)
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Disabled, card selection limit is "..G.hand.config.highlighted_limit..".", "TOGAPack") end
		end
	end,
	defeat = function(self)
		if self.vars.activated then
			G.hand.config.highlighted_limit = math.min(G.hand.config.highlighted_limit + self.vars.reducedhandsel, 5)
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Defeated, card selection limit is "..G.hand.config.highlighted_limit..".", "TOGAPack") end
		end
	end
}

SMODS.Blind{
	key = 'worldwideweb',
	atlas = 'TOGAWWWBlind',
	boss_colour = HEX('aafdff'),
	pos = { x = 0, y = 0 },
	vars = { increasehandsel = 3, activated = false },
	dollars = 6,
	mult = 56.6,
	boss = { min = 3.11, showdown = true },
	in_pool = function(self)
		return G.GAME.dialupmodem or false
	end,
	loc_vars = function(self)
		return { vars = { self.vars.increasehandsel } }
	end,
	collection_loc_vars = function(self)
		return { key = self.key.."_collection" }
	end,
	set_blind = function(self)
		self.vars.activated = true
		G.hand.config.highlighted_limit = math.max(G.hand.config.highlighted_limit + self.vars.increasehandsel, 1)
		G.hand:change_size(self.vars.increasehandsel)
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Changed card selection limit to "..G.hand.config.highlighted_limit..".", "TOGAPack") end
		if togabalatro.config.DoMoreLogging then sendInfoMessage("Changed hand size to "..G.hand.config.card_limit..".", "TOGAPack") end
	end,
	disable = function(self)
		if self.vars.activated then
			self.vars.activated = false
			G.hand.config.highlighted_limit = math.max(G.hand.config.highlighted_limit - self.vars.increasehandsel, 5)
			G.hand:change_size(-self.vars.increasehandsel)
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Disabled, card selection limit is "..G.hand.config.highlighted_limit..".", "TOGAPack") end
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Disabled, changed hand size to "..G.hand.config.card_limit..".", "TOGAPack") end
		else
			if togabalatro.config.SFXWhenTriggered then play_sound("toga_failsfx", 1, 0.5) end
		end
	end,
	defeat = function(self)
		if self.vars.activated then
			self.vars.activated = false
			G.hand.config.highlighted_limit = math.max(G.hand.config.highlighted_limit - self.vars.increasehandsel, 5)
			G.hand:change_size(-self.vars.increasehandsel)
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Defeated, card selection limit is "..G.hand.config.highlighted_limit..".", "TOGAPack") end
			if togabalatro.config.DoMoreLogging then sendInfoMessage("Defeated, changed hand size to "..G.hand.config.card_limit..".", "TOGAPack") end
		end
		ease_dollars(50)
	end
}