-- RICH TABLINE BAR PLUGIN
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_padding = {
  left   = '2cell', -- or 8, or 12
  right  = '2cell',
  top    = '1cell',
  bottom = '1cell',
}

config.default_cursor_style = 'SteadyBar'

-- Optional: set a color scheme first
config.color_scheme = "Tokyo Night Storm"

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
-- bar.apply_to_config(config)
config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top/bottom
    -- background = '#1a1b26',

    -- The active tab
    active_tab = {
      bg_color = "transparent",
      fg_color = '#b89af7',
    },

    -- Inactive tabs
    -- inactive_tab = {
    --   bg_color = '#16161e',
    --   fg_color = '#acb0d0',
    -- },

    -- Hover state for inactive tabs
    -- inactive_tab_hover = {
    --   bg_color = '#3b4261',
    --   fg_color = '#acb0d0',
    -- },

    -- The "new tab" button
    -- new_tab = {
    --   bg_color = '#16161e',
    --   fg_color = '#acb0d0',
    -- },
  },
}
-- enable / disable modules & apply to configuration
bar.apply_to_config(
  config,
  {
    padding = {
      tabs = {
        left = 1,  -- space before the tab number
        right = 1, -- space after the tab title
      },
    },
    modules = {
      hostname = {
        enabled = false,
      },
      username = {
        enabled = false,
      },
    },
  }
)
config.window_frame = {
  font = require('wezterm').font 'Roboto',
  font_size = 50,
}
config.tab_bar_at_bottom = false
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 20.0 -- controls font size including the tabline
config.macos_window_background_blur = 10
config.window_decorations = "RESIZE"
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = true -- shows 1:  2:  etc (respects zero_based setting)
config.use_fancy_tab_bar = false
config.max_fps = 144
config.animation_fps = 144
config.tab_max_width = 50

return config

--
-- NVIM STYLE
-- local wezterm = require("wezterm")
-- local config = wezterm.config_builder()

-- -- Recommended: set color scheme first
-- config.color_scheme = "Tokyo Night Storm"

-- config.use_fancy_tab_bar = true   -- ← change this
-- config.tab_bar_at_bottom = true  -- optional, looks better with padding

-- local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

-- tabline.setup({
--   options = {
--     icons_enabled = true,
--     tabs_enabled = true,
--     theme = "Tokyo Night Storm", -- or your scheme name
--     -- tabs_enabled = false,     -- if you want to hide tabs and use native
--   },
--   sections = {
--     tabline_a = { "mode" },
--     tabline_b = { "workspace" },
--     tabline_c = { "" },
--     tab_active = { "index", { "parent", padding = 0 }, "/", { "cwd", padding = { left = 1, right = 1 } }, { "zoomed", padding = 0 } },
--     tab_inactive = { "index", { "process", padding = { left = 1, right = 1 } } },
--     tabline_x = { "ram", "cpu" },
--     tabline_y = { "datetime", "battery" },
--     tabline_z = { "domain" },
--   },
--   extensions = {}, -- add e.g. { "resurrect" } if you use it
-- })


-- -- config.tab_bar_at_bottom = false
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.font_size = 18.0 -- this controls EVERYTHING, including the tabline
-- config.macos_window_background_blur = 10
-- config.window_decorations = "RESIZE"
-- -- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.hide_tab_bar_if_only_one_tab = true
-- config.show_tab_index_in_tab_bar = true -- shows 1:  2:  etc (respects zero_based setting)
-- -- config.use_fancy_tab_bar = false
-- config.max_fps = 144
-- config.animation_fps = 144
-- config.tab_max_width = 50
-- tabline.apply_to_config(config)

-- return config
