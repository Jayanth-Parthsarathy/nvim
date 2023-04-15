require("mason-null-ls").setup({
    ensure_installed = { "stylua", "black", "prettier", "gofmt", "clang-format", "rustfmt", "shfmt" },
})

local null_ls = require("null-ls")
local blt = null_ls.builtins

null_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    autostart = true,
    sources = {
        blt.formatting.stylua.with({
            extra_args = { "--config-path", vim.fs.normalize("~/.config/.stylua.toml") },
        }),
        blt.formatting.black.with({ args = { "--quiet", "-" } }),
        blt.formatting.prettier,
        blt.formatting.gofmt,
        blt.formatting.clang_format,
        blt.formatting.rustfmt,
        blt.formatting.shfmt,
        -- blt.formatting.goimports,
        -- blt.formatting.gofumpt,
        -- blt.formatting.isort,
        -- blt.formatting.shfmt,
    },
})
vim.cmd('map <Leader>lf :LspZeroFormat<CR>')
