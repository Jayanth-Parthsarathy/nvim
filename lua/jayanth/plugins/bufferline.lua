return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
	version = "*",
	config = function()
		require("bufferline").setup{}
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<C-w>", "<cmd>Bdelete<CR>", { desc = "Delete current buffer" })
	end,
}
