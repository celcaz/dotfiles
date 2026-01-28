-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder();
-- This table will hold the configuration.

-- General

config.default_domain = 'WSL:archlinux'
config.font_size = 19
config.color_scheme = "Catpuccin Mocha"


config.window_decorations = "RESIZE"
-- Tirar tab
--config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.window_background_opacity = 0.9
-- If you want, you can also add other configurations here (font, color scheme, etc.)
-- config.font = wezterm.font 'MesloLGS Nerd Font Mono'
-- config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
return config
