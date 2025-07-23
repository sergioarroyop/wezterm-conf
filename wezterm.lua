require("utils")
local wezterm = require("wezterm")

-- Declare configs
local styling_config = require("styling")
local os_domains_config = require("os_domains")
local binding_config = require("bindings")
local config = {}

-- Merge configs
merge_tables(config, binding_config)
merge_tables(config, os_domains_config)
merge_tables(config, styling_config)

return config
