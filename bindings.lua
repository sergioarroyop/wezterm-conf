local wezterm = require("wezterm")
local binding_config = {}

-- Leader Binding
binding_config.leader = { key = "Space", mods = "CTRL" }
binding_config.keys = {
	-- Panels Binding --
	-- Spawn Panel
	{
		key = "t",
		mods = "SHIFT|ALT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	-- Split panel
	{
		-- We use ( and ) as it is the char rendered when using SHIFT+8 or SHIFT+9
		key = ")",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "(",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- Move through tabs
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	-- Move through panels
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	-- Reload binding_configuration
	{
		key = "R",
		mods = "SHIFT|ALT",
		action = wezterm.action.ReloadConfiguration,
	},
}

return binding_config
