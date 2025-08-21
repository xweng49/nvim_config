return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				scratch_repl = true,
				repl_definition = {
					sh = {
						command = { "zsh" },
					},
					python = {
						command = { "ipython" },
						format = common.bracketed_paste_python,
						block_dividers = { "# %%", "#%%" },
					},
				},
				repl_filetype = function(bufnr, ft)
					return ft
				end,
				repl_open_cmd = view.split.vertical.botright(0.4)
			},
			highlight = {
				italic = true
			},
			ignore_blank_lines = true,
		})
	end,
}
