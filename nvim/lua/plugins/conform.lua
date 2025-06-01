return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			go = { "gofmt", "gofumpt", "goimports" },
            yml = { "yamlfix" },
            proto = { "buf" },
            xml = { "xmlformatter" },
            markdown = { "markdownfmt" },
            sql = { "pg_format" },
            sh = { "shfmt" },
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
