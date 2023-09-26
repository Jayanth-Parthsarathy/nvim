return {
	{
		"morhetz/gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
      vim.cmd([[colorscheme gruvbox]])
			if vim.fn.exists("syntax_on") and vim.g.colors_name == "gruvbox" then
				if vim.o.background == "dark" then
					vim.cmd("hi Normal guibg=#0a0a0a")
				end
			end
		end,
	},
}
