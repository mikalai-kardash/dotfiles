return {
	"nvim-neotest/neotest",
	dependencies = {
		{ "nvim-neotest/nvim-nio", version = "*" },
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
			"fredrikaverpil/neotest-golang",
			version = "*",
			dependencies = {
				"andythigpen/nvim-coverage",
			},
		},
	},
	config = function()
		local neotest_golang_opts = {
			runner = "go",
			go_test_args = {
				"-v",
				"-race",
				"-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
			},
		}
		require("neotest").setup({
			adapters = {
				require("neotest-golang")(neotest_golang_opts),
			},
		})
	end,
}
