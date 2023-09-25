return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
	event = "BufAdd",
	version = "*",
	config = function()
		require("bufferline").setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<C-w>", "<cmd>Bdelete<CR>", { desc = "Delete current buffer" })
	end,
}
