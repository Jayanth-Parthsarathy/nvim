return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  keys = {
    { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Nvim-Tree" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(
      {
        filters = {
          git_ignored = false
        }
      }
    )
  end,
}
