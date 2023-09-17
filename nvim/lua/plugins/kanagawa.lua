local opts = {
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = true, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	-- colors = { -- add/modify theme and palette colors
	-- 	palette = {},
	-- 	theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	-- },
	overrides = function(colors)
		local theme = colors.theme
		return {
			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },
		}
	end,
	theme = "wave", -- Load "wave" theme when 'background' option is not set
	background = { -- map the value of 'background' option to a theme
		dark = "wave", -- try "dragon" !
		light = "lotus",
	},
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
}
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	opts = opts,
	priority = 1000,
	-- cond = false,
}
