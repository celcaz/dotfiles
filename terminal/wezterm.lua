local wezterm = require "wezterm"

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Common
config.font_size = 19
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.window_padding = { left = 20, right = 20, top = 20, bottom = 2 }
config.color_scheme = "Catppuccin Mocha"

-- Windows/WSL only
local is_windows = wezterm.target_triple:find("windows") ~= nil
if is_windows then
  config.default_domain = "WSL:archlinux"
end

return config
