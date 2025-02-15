return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		formatter_by_ft = {
			lua = { "stylua" },
			gp = { "gofmt", "gofumpt", "goimports" },
		},
	},
}
