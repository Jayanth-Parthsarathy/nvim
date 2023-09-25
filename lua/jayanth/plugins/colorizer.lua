return {
	{
		"norcalli/nvim-colorizer.lua",
		lazy = true,
		cmd = "ColorizerToggle",
		config = function()
			require("colorizer").setup()
		end,
	},
}
