vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.scrolloff = 8

vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = { current_line = true },
})
