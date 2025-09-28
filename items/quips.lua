sendInfoMessage("Loading JimboQuips...", "TOGAPack")

SMODS.JimboQuip({
    key = 'srb2kartlose',
    extra = {
        center = 'c_toga_selfpropelledbomb',
		particle_colours = { -- table of up to 3 colours for particles
			G.C.RED,
			G.C.BLACK,
			G.C.BLACK
		},
		times = 0,
		pitch = 0.6,
		juice = {0, 0},
		delay = 0
    },
    filter = function(self, type)
		if (type == 'lose' or type == 'loss') then return true, { weight = 1 } end
    end
})