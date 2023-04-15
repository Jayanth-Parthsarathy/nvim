local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  "pyright",
  "arduino_language_server",
  "tsserver",
  "cmake",
  "html",
  "cssls",
  "rust_analyzer",
  "lua_ls",
  "bashls",
  "clangd",
  "gopls",
  "emmet_ls",
  "tailwindcss",
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
