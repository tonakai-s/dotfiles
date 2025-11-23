print("it works")
local nvim_lsp = require("lspconfig")
nvim_lsp.nixd.setup({
   settings = {
      nixd = {
         formatting = {
            command = { "nixfmt" },
         },
      },
   },
})
