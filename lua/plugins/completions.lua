return {
	"saghen/blink.cmp",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
		},
	},
	version = "v1.*",
	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		signature = { enabled = true },
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",

		},

		completion = { documentation = { auto_show = true} },
		sources = {
			default = {
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
		},
		snippets = {
			preset = "luasnip",
		},
	},
--	opts_extend = {
--		"sources.default",
--	},
	config = function(_, opts)
		local lspkind = require('lspkind')
		

		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_lua").load({ paths = "./lua/luasnippets" })
		require("blink.cmp").setup(opts)
	end,
}
