return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "nix", "c", "lua", "vim", "vimdoc", "query", "elixir", "javascript", "html", "rust", "typescript", "php", "python", "asm" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  
		})
	end
}
