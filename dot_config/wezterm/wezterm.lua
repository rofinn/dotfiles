-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local scheme = "Catppuccin Frappe"
local scheme_def = wezterm.color.get_builtin_schemes()[scheme]

config.font = wezterm.font("FiraCode Nerd Font")
config.window_background_opacity = 0.95

config.color_scheme = scheme
config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "Roboto" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 12.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = scheme_def.background,

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = scheme_def.background,
}

config.colors = {
	tab_bar = {
		background = scheme_def.background,
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = scheme_def.background,

		new_tab = {
			bg_color = scheme_def.background,
			fg_color = scheme_def.foreground,
		},
		active_tab = {
			bg_color = scheme_def.background,
			fg_color = "White",
			intensity = "Bold",
		},
		inactive_tab = {
			bg_color = scheme_def.background,
			fg_color = scheme_def.foreground,
			intensity = "Half",
			italic = true,
		},
		inactive_tab_hover = {
			bg_color = scheme_def.background,
			fg_color = "White",
			intensity = "Bold",
		},
		new_tab_hover = {
			bg_color = scheme_def.background,
			fg_color = "White",
			intensity = "Bold",
		},
	},
}

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.default_prog = { "/usr/local/bin/fish", "-l" }

-- Set to true if we decide we want a tab bar again.
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
