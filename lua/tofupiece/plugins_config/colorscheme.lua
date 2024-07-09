-- catppuccin
require("catppuccin").setup({
	flavour = "macchiato",
	transparent_background = false,
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" },
		functions = { "italic" },
		keywords = { "italic" },
	},
	integrations = {

		indent_blankline = {
			enabled = true,
			scope_color = "frappe",
			colored_indent_levels = true,
		},
		mini = {
			enabled = true,
			indentscope_color = "frappe",
		},
		noice = true,
		notify = true,
		native_lsp = {
			underlines = {
				errors = { "undercurl" },
				hints = { "undercurl" },
				warnings = { "undercurl" },
				information = { "undercurl" },
			},
		},
	},
})
-- kanagawa default
-- Default options:
require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {},
		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	},
	overrides = function(colors) -- add/modify highlights
		return {}
	end,
	theme = "wave", -- Load "wave" theme when 'background' option is not set
	background = { -- map the value of 'background' option to a theme
		dark = "dragon", -- try "dragon" !
		light = "lotus",
	},
})

-- tokyonight
require("tokyonight").setup({})
-- choose theme
vim.cmd("colorscheme kanagawa")
