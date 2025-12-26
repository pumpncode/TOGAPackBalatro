sendInfoMessage("Initializing window noises...", "TOGAPack")

-- The window do be moving.
SMODS.Sound({key = "win95plusmin1", path = "plus95/Dangerous Creatures minimize.ogg"})
SMODS.Sound({key = "win95plusmax1", path = "plus95/Dangerous Creatures maximize.ogg"})

SMODS.Sound({key = "win95plusmin2", path = "plus95/Inside your Computer minimize.ogg"})
SMODS.Sound({key = "win95plusmax2", path = "plus95/Inside your Computer maximize.ogg"})
SMODS.Sound({key = "win95plusrestup2", path = "plus95/Inside your Computer restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw2", path = "plus95/Inside your Computer restore down.ogg"})

SMODS.Sound({key = "win95plusmin3", path = "plus95/Jungle minimize.ogg"})
SMODS.Sound({key = "win95plusmax3", path = "plus95/Jungle maximize.ogg"})
SMODS.Sound({key = "win95plusrestup3", path = "plus95/Jungle restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw3", path = "plus95/Jungle restore down.ogg"})

SMODS.Sound({key = "win95plusmin4", path = "plus95/Leonardo da Vinci minimize.ogg"})
SMODS.Sound({key = "win95plusmax4", path = "plus95/Leonardo da Vinci maximize.ogg"})
SMODS.Sound({key = "win95plusrestup4", path = "plus95/Leonardo da Vinci restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw4", path = "plus95/Leonardo da Vinci restore down.ogg"})

SMODS.Sound({key = "win95plusmin5", path = "plus95/Mystery minimize.ogg"})
SMODS.Sound({key = "win95plusmax5", path = "plus95/Mystery maximize.ogg"})

SMODS.Sound({key = "win95plusmin6", path = "plus95/Nature minimize.ogg"})
SMODS.Sound({key = "win95plusmax6", path = "plus95/Nature maximize.ogg"})
SMODS.Sound({key = "win95plusrestup6", path = "plus95/Nature restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw6", path = "plus95/Nature restore down.ogg"})

SMODS.Sound({key = "win95plusmin7", path = "plus95/Science minimize.ogg"})
SMODS.Sound({key = "win95plusmax7", path = "plus95/Science maximize.ogg"})
SMODS.Sound({key = "win95plusrestup7", path = "plus95/Science restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw7", path = "plus95/Science restore down.ogg"})

SMODS.Sound({key = "win95plusmin8", path = "plus95/Space minimize.ogg"})
SMODS.Sound({key = "win95plusmax8", path = "plus95/Space maximize.ogg"})
SMODS.Sound({key = "win95plusrestup8", path = "plus95/Space restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw8", path = "plus95/Space restore down.ogg"})

SMODS.Sound({key = "win95plusmin9", path = "plus95/Sports minimize.ogg"})
SMODS.Sound({key = "win95plusmax9", path = "plus95/Sports maximize.ogg"})

SMODS.Sound({key = "win95plusmin10", path = "plus95/The 60's USA minimize.ogg"})
SMODS.Sound({key = "win95plusmax10", path = "plus95/The 60's USA maximize.ogg"})
SMODS.Sound({key = "win95plusrestup10", path = "plus95/The 60's USA restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw10", path = "plus95/The 60's USA restore down.ogg"})

SMODS.Sound({key = "win95plusmin11", path = "plus95/The Golden Era minimize.ogg"})
SMODS.Sound({key = "win95plusmax11", path = "plus95/The Golden Era maximize.ogg"})

SMODS.Sound({key = "win95plusmin12", path = "plus95/Travel minimize.ogg"})
SMODS.Sound({key = "win95plusmax12", path = "plus95/Travel maximize.ogg"})
SMODS.Sound({key = "win95plusrestup12", path = "plus95/Travel restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw12", path = "plus95/Travel restore down.ogg"})

SMODS.Sound({key = "win95plusmin13", path = "plus95/Windows 95 minimize.ogg"})
SMODS.Sound({key = "win95plusmax13", path = "plus95/Windows 95 maximize.ogg"})
SMODS.Sound({key = "win95plusrestup13", path = "plus95/Windows 95 restore up.ogg"})
SMODS.Sound({key = "win95plusrestdw13", path = "plus95/Windows 95 restore down.ogg"})

-- continue working on this.
togabalatro.plussfxthemeregistry = {"Dangerous Creatures", "Inside Your Computer", "Jungle", "Leonardo Da Vinci", "Mystery", "Nature", "Science", "Space", "Sports", "The 60's USA", "The Golden Era", "Travel", "Windows 95"}
togabalatro.plussfxthemes = {
	["Dangerous Creatures"] =	{"toga_win95plusmin1", "toga_win95plusmax1"},
	["Inside Your Computer"] =	{"toga_win95plusmin2", "toga_win95plusmax2", "toga_win95plusrestup2", "toga_win95plusrestdw2"},
	["Jungle"] = 				{"toga_win95plusmin3", "toga_win95plusmax3", "toga_win95plusrestup3", "toga_win95plusrestdw3"},
	["Leonardo Da Vinci"] = 	{"toga_win95plusmin4", "toga_win95plusmax4", "toga_win95plusrestup4", "toga_win95plusrestdw4"},
	["Mystery"] = 				{"toga_win95plusmin5", "toga_win95plusmax5"},
	["Nature"] = 				{"toga_win95plusmin6", "toga_win95plusmax6", "toga_win95plusrestup6", "toga_win95plusrestdw6"},
	["Science"] = 				{"toga_win95plusmin7", "toga_win95plusmax7", "toga_win95plusrestup7", "toga_win95plusrestdw7"},
	["Space"] = 				{"toga_win95plusmin8", "toga_win95plusmax8", "toga_win95plusrestup8", "toga_win95plusrestdw8"},
	["Sports"] = 				{"toga_win95plusmin9", "toga_win95plusmax9", "toga_win95plusrestup9", "toga_win95plusrestdw9"},
	["The 60's USA"] = 			{"toga_win95plusmin10", "toga_win95plusmax10", "toga_win95plusrestup10", "toga_win95plusrestdw10"},
	["The Golden Era"] =		{"toga_win95plusmin11", "toga_win95plusmax11"},
	["Travel"] =				{"toga_win95plusmin12", "toga_win95plusmax12", "toga_win95plusrestup12", "toga_win95plusrestdw12"},
	["Windows 95"] =			{"toga_win95plusmin13", "toga_win95plusmax13", "toga_win95plusrestup13", "toga_win95plusrestdw13"},
}

-- Check if we are registered already.
togabalatro.plussfxcheck = function(key)
	if type(key) ~= 'string' then return end
	for k, v in pairs(togabalatro.plussfxthemeregistry or {}) do
		if string.lower(v) == string.lower(key) and togabalatro.plussfxthemes[key] then return true end
	end
end

-- Register new sound theme.
-- togabalatro.newplustheme({ key = 'example', sfx = { 'minimize', 'maximize', 'restore up', 'restore down' } })
togabalatro.newplustheme = function(t)
	if not type(t) == 'table' then sendInfoMessage("Not a table, aborting.", "TOGAPack"); return end
	if type(t.key) == 'string' and type(t.sfx) == 'table' and next(t.sfx) then
		if not togabalatro.plussfxcheck(t.key) then
			togabalatro.plussfxthemes[t.key] = t.sfx
			table.insert(togabalatro.plussfxthemeregistry, t.key)
			sendInfoMessage("Registered "..t.key.." sound theme for window state change.", "TOGAPack")
		else
			sendInfoMessage("Theme already registered, aborting.", "TOGAPack")
		end
	end
end

togabalatro.getcurtheme = function()
	if type(togabalatro.config.WindowSFXTheme) ~= 'string' then togabalatro.config.WindowSFXTheme = 'Windows 95' end
	for i, v in ipairs(togabalatro.plussfxthemeregistry) do
		if v == togabalatro.config.WindowSFXTheme then return i end
	end
end

togabalatro.plussfxtype = { min = 1, max = 2, restup = 3, restdw = 4 }
togabalatro.playwindowsfx = function(_t)
	if type(togabalatro.config.WindowSFXUse) ~= 'boolean' then togabalatro.config.WindowSFXUse = false end
	if type(togabalatro.config.WindowSFXTheme) ~= 'string' then togabalatro.config.WindowSFXTheme = 'Windows 95' end
	if not togabalatro.config.WindowSFXUse then return end
	if not togabalatro.plussfxtype[_t] then return end
	if silent then return end
	
	local sfxtype = togabalatro.plussfxtype[_t]
	local selectedsfx = togabalatro.plussfxthemes[togabalatro.config.WindowSFXTheme][togabalatro.plussfxtype[_t]]
	
	if sfxtype and selectedsfx and SMODS.Sounds[selectedsfx] then play_sound(selectedsfx) end
end

G.FUNCS.togabalatro_themeselect = function(args)
	togabalatro.targs = args
	if not args or args.to_val == nil then return end
	togabalatro.config.WindowSFXTheme = args.to_val
	SMODS.save_mod_config(togabalatro)
end