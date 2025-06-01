return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<leader>pf",
			"<cmd>Telescope find_files<cr>",
			desc = "Find files",
		},
		{
			"<leader>pws",
			function()
				local word = vim.fn.expand("<cWORD>")
				local builtin = require("telescope.builtin")
				builtin.grep_string({ search = word })
			end,
			desc = "Find text under cursor",
		},
	},
}
