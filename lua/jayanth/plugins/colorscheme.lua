return {
  -- {
  -- 	"catppuccin/nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  --    name = "catppuccin",
  -- 	config = function()
  -- 		vim.cmd([[colorscheme catppuccin]])
  -- 	end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
}
