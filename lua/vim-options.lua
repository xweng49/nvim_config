vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.g.mapleader= " "

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
--vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.opt.clipboard = "unnamedplus"
