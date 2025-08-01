return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opt = {},
	config = function()
		require("bufferline").setup({
			options = {
				separator_style="padded_slant",
			},
		})
	end,
}
