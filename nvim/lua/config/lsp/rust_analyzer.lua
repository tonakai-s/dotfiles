local capabilities = require("config.lsp.default")

vim.lsp.enable('rust_analyzer')
vim.lsp.config('rust_analyzer', {
	settings = {
		['rust-analyzer'] = {
			diagnostics = {
				enable = true;
			},
			capabilities = capabilities,
            procmacro = {
                ignored = {
                    leptos_macro = {
                        "server",
                    }
                }
            },
            cargo = {
                features = "all",
            },
		}
	}
})
