require("kanagawa").setup({
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true },
	specialReturn = true,
	specialException = true,
	transparent = true,
	dimInactive = false,
	globalStatus = false,
	terminalColors = true,
	colors = {},
	overrides = {},
	theme = "default",
})

require("catppuccin").setup({
	transparent_background = true,
	integrations = {
		aerial = false,
		barbar = false,
		beacon = false,
		cmp = true,
		coc_nvim = false,
		dashboard = true,
		fern = false,
		fidget = true,
		gitgutter = false,
		gitsigns = true,
		hop = false,
		illuminate = true,
		leap = false,
		lightspeed = false,
		lsp_saga = false,
		lsp_trouble = false,
		markdown = true,
		mini = false,
		neogit = false,
		neotest = false,
		neotree = false,
		notify = true,
		nvimtree = true,
		overseer = false,
		pounce = false,
		symbols_outline = true,
		telekasten = false,
		telescope = true,
		treesitter = true,
		treesitter_context = false,
		ts_rainbow = false,
		vim_sneak = false,
		vimwiki = false,
		which_key = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		navic = {
			enabled = false,
			custom_bg = "NONE",
		},
	},
})

require("onedark").setup({
	style = "darker",
	transparent = true,
	term_colors = true,
	ending_tildes = false,
	cmp_itemkind_reverse = false,
	toggle_style_key = nil,
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	lualine = {
		transparent = true,
	},
	colors = {},
	highlights = {},
	diagnostics = {
		darker = true,
		undercurl = true,
		background = true,
	},
})

vim.g.tokyodark_transparent_background = true
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = true
vim.g.tokyodark_color_gamma = "1.0"

vim.cmd("colorscheme catppuccin")
