local capabilities = require("config.lsp.default")

vim.lsp.enable('rust_analyzer')
vim.lsp.config('rust_analyzer', {
	settings = {
		['rust-analyzer'] = {
			diagnostics = {
				enable = false;
			},
			capabilities = capabilities,
		}
	}
})
