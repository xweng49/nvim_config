return {
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
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

			--completion = { documentation = { auto_show = true }, info = { enabled = true } },
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
				{
					"folke/lazydev.nvim",
					ft = "lua", -- only load on lua files
					opts = {
						library = {
							-- See the configuration section for more details
							-- Load luvit types when the `vim.uv` word is found
							{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
						},
					},
				},
			},
			snippets = {
				preset = "luasnip",
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
		},
		--	opts_extend = {
		--		"sources.default",
		--	},
		config = function(_, opts)
			require("luasnip.loaders.from_vscode").lazy_load()
			require("luasnip.loaders.from_lua").load({ paths = "./lua/luasnippets/" })
			require("blink.cmp").setup(opts)
		end,
	},
}
