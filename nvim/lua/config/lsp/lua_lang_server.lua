local capabilities = require("config.lsp.default")

vim.lsp.enable("lua_ls")
vim.lsp.config('lua_ls', {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".emmyrc.json", ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
    settings = {
        Lua = {
            codeLens = {
                enable = true
            },
            hint = {
                enable = true,
                semicolon = "Disable"
            }
        }
    },
    capabilities = capabilities,
})
