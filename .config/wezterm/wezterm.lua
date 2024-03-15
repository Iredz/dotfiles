local wezterm = require 'wezterm'
local config = wezterm.config_builder()
--local config = {}

config.color_scheme = 'Tokyo Night (Gogh)'
config.enable_scroll_bar = true
config.font = wezterm.font 'JetBrainsMono NF'
config.font_size = 14.0
config.window_background_opacity = 0.9



return config
