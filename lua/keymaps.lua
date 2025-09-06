-- keymaps
-- LSP settings
vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})

-- Buffer settings
vim.keymap.set("n", "<C-S-]>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-[>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

-- Saving settings
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", {})

-- Neo-tree settings
vim.cmd([[highlight! link NeoTreeNormal Normal]])
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- Obsidian settings
vim.keymap.set("n", "<leader>of", ":ObsidianFollowLink<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>oo", ":Obsidian<CR>", { noremap = true, silent = true })

--Oil
vim.keymap.set("n", "<leader>`", "<cmd>:Oil --float<cr>", { noremap = true, silent = true, desc="Open Oil"})

-- Telescope settings
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local telescope = require("telescope")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "fuzzy find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "repgrep search" })
telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = actions.preview_scrolling_down,
				["<C-k>"] = actions.preview_scrolling_up,
			},
		},
	},
})

-- Iron keymaps
vim.keymap.set("n", "<leader>rf", "<cmd>IronFocus<cr>")
vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>")
local iron = require("iron.core")
iron.setup({
	keymaps = {
		toggle_repl = "<leader>rr",
		restart_repl = "<leader>rR",
		send_motion = "<leader>sc",
		visual_send = "<leader>sc",
		send_file = "<leader>sf",
		send_line = "<leader>sl",
		send_paragraph = "<leader>sp",
		send_until_cursor = "<leader>su",
		send_mark = "<leader>sm",
		send_code_block = "<leader>sb",
		send_code_block_and_move = "<leader>sn",
		mark_motion = "<leader>mc",
		mark_visual = "<leader>mc",
		remove_mark = "<leader>md",
		cr = "<leader>s<cr>",
		interrupt = "<leader>s<leader>",
		exit = "<leader>sq",
		clear = "<leader>cl",
	},
})

-- Debug keymaps
local dap = require("dap")
local dapui = require("dapui")
vim.keymap.set("n", "<leader>dd", dapui.toggle, { desc = "toggle dap ui" })
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "continue debugging" })
vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "terminate debugging" })
