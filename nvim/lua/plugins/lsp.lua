return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- completion library
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"j-hui/fidget.nvim",

		-- neodev: Lua LSP for Neovim
		{ "folke/neodev.nvim", opts = {} },
	},

	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "gopls" },
			handlers = {
				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup {
						capabilities = capabilities,
					}
				end,
			},
		})

		local cmp = require("cmp")
		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["C-<space>"] = cmp.mapping.complete({}),
				["<cr>"] = cmp.mapping.confirm({ select = true }),
				["<C-e>"] = cmp.mapping.abort(),
				["<esc>"] = cmp.mapping.abort(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "path" },
			}, {
				{ name = "buffer" },
			}),
		})

		require("fidget").setup({})

		vim.diagnostic.config({
			update_in_insert = true,
		})
	end,
}
