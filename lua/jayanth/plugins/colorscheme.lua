return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	opts = {},
	config = function()
		require("catppuccin").setup({
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.flamingo },
					["@variable"] = { fg = colors.yellow },
					CmpBorder = { fg = colors.surface2 },
					Pmenu = { bg = colors.none },
				}
			end,
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				treesitter = true,
				notify = true,
				mini = true,
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
					inlay_hints = {
						background = true,
					},
				},
				indent_blankline = {
					enabled = true,
					colored_indent_levels = false,
				},
			},
		})
		vim.cmd([[colorscheme catppuccin]])
	end,
}
