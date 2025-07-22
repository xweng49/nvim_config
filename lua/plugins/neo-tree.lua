return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				visible = true
			},
		},
		auto_clean_after_session_restore = true
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.cmd([[highlight! link NeoTreeNormal Normal]])
		vim.cmd([[highlight! link NeoTreeNormalNC Normal]])
		vim.cmd([[highlight! link NeoTreeEndOfBuffer Normal]])
		vim.cmd([[highlight! link NeoTreeWinSeparator Normal]])
		vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
	end,
}
