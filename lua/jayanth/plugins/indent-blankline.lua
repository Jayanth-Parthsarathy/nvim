return{
  "lukas-reineke/indent-blankline.nvim",
  version = "2.20.8",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("indent_blankline").setup {
      -- for example, context is off by default, use this to turn it on
      show_current_context = true,
      show_current_context_start = true,
    }
  end
}

