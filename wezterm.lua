local wezterm = require("wezterm")
local config = {}

local target = wezterm.target_triple

-- Multiple domain configuration Windows WLS:Debian + Arch
if target == "x86_64-pc-windows-msvc" then
	-- CONFIGURACIÓN PARA WINDOWS
	config.default_domain = "WSL:Debian"
	config.launch_menu = {
		{ label = "WSL: Debian", args = { "wsl.exe", "~" } },
	}
elseif target == "x86_64-unknown-linux-gnu" then
	-- Using Zsh as Shell
	config.default_prog = { "/bin/zsh", "-l" }
	config.default_domain = "local"
	config.launch_menu = {
		{ label = "Zsh", args = { "/bin/zsh", "-l" } },
	}
end

-- Fonts and colors
config.font = wezterm.font("JetBrains Mono")
config.font_size = 12.0
config.color_scheme = "Gruvbox Dark (Gogh)"

-- Leader Binding
config.leader = { key = "Space", mods = "CTRL|SHIFT" }
config.keys = {
	-- CTRL+SHIFT+Space, followed by 'r' will put us in resize-pane
	-- mode until we cancel that mode.
	{
		key = "9",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "8",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical,
	},
}

return config
