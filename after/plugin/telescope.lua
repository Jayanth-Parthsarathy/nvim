local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>pw", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>gt", builtin.git_status, {})
vim.keymap.set("n", "<leader>cm", builtin.git_commits, {})
require("telescope").load_extension("media_files")
require("telescope").setup({
	extensions = {
		media_files = {
			-- filetypes whitelist
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg" },
			-- find command (defaults to `fd`)
			find_cmd = "rg",
		},
	},
})
