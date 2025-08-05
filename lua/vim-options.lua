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

-- keymaps
-- LSP settings
vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})

-- Buffer settings
vim.keymap.set("n", "<C-S-]>", ":bnext<CR>", { noremap=true, silent=true})
vim.keymap.set("n",	"<C-S-[>", ":bprevious<CR>", { noremap=true, silent=true})
--vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true})
--vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true})
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')


-- Saving settings
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", {})


