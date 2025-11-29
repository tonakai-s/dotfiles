local capabilities = require("config.lsp.default")

vim.lsp.enable('nixd')
vim.lsp.config['nixd'] = {
    cmd = { 'nixd' },
    filetypes = { 'nix' },
    root_markers = { 'flakes.nix', '.git' },
    formatting = {
        command = { "nixpkgs-fmt" },
    },
    capabilities = capabilities,
}
