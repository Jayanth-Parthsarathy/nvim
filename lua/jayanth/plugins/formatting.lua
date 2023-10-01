return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- import conform
      local conform = require("conform")

      -- Setup conform
      conform.setup({
        formatters_by_ft = {
          -- Conform will run multiple formatters sequentially
          -- Use a sub-list to run only the first available formatter
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          svelte = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          graphql = { "prettier" },
          lua = { "stylua" },
          python = { "isort", "black" },
        },
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 2000,
          async = false,
          lsp_fallback = true,
        },
      })
      -- Key map for formatting
      vim.keymap.set({ "n", "v" }, "<leader>fm", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 2000,
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },
}
