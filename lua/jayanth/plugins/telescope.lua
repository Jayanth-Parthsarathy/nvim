return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Fuzzy find files in cwd",
		},
		{
			"<leader>fw",
			"<cmd>Telescope live_grep<cr>",
			desc = "Find strings in cwd",
		},
		{
			"<leader>gf",
			"<cmd>Telescope git_files<cr>",
			desc = "Fuzzy find git files",
		},
		{
			"<leader>gs",
			"<cmd>Telescope git_status<cr>",
			desc = "Fuzzy find git status",
		},
		{
			"<leader>gw",
			"<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
			desc = "Fuzzy find git worktrees",
		},
		{
			"<leader>gW",
			"<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
			desc = "Create new git worktree",
		},
	},
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"ThePrimeagen/git-worktree.nvim",
	},
	config = function()
		local telescope  =require("telescope")
		telescope.load_extension("fzf")
		telescope.load_extension("git_worktree")
	end,
}
