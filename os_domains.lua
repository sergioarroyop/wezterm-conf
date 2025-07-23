local wezterm = require("wezterm")
local os_config = {}

-- Multiple domain configuration Windows WLS:Debian + Arch
local target = wezterm.target_triple
if target == "x86_64-pc-windows-msvc" then
	-- CONFIGURACIÓN PARA WINDOWS
	os_config.default_domain = "WSL:Debian"
	os_config.launch_menu = {
		{ label = "WSL: Debian", args = { "wsl.exe", "~" } },
	}
elseif target == "x86_64-unknown-linux-gnu" then
	-- Using Zsh as Shell
	os_config.default_prog = { "/bin/zsh", "-l" }
	os_config.default_domain = "local"
	os_config.launch_menu = {
		{ label = "Zsh", args = { "/bin/zsh", "-l" } },
	}
end

return os_config
