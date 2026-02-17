vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = true }),
  callback = function(args)
    -- Check if the attached client supports formatting
    if vim.lsp.buf.format then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          -- Use async=false to ensure formatting happens before the file is written
          vim.lsp.buf.format({ async = false, id = args.data.client_id })
        end,
      })
    end
  end,
})
