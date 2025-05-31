local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config = {
  initial_cols = 220,
  initial_rows = 60,
  window_background_opacity = 0.97,
  macos_window_background_blur = 5,
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "RESIZE",
  enable_tab_bar = false,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = false,
  font_size = 13,
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("MonaspiceAr Nerd Font"),
  audible_bell = "Disabled",
  window_padding = {
    left = 15,
    right = 15,
    top = 15,
    bottom = 15,
  },
  colors = {
    -- background = "#12151B",
  },
}

return config

