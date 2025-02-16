return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			go = { "gofmt", "gofumpt", "goimports" },
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
