return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({})

		vim.keymap.set("n", "<leader>t", function()
			require("trouble").toggle({
				mode = "diagnostics",
			})
		end, { desc = "Trouble", silent = true, noremap = true })

		vim.keymap.set("n", "[t", function()
			require("trouble").prev({ skip_groups = true, jump = true })
		end, { desc = "Trouble" })

		vim.keymap.set("n", "]t", function()
			require("trouble").next({ skip_groups = true, jump = true })
		end, { desc = "Trouble" })
	end,
}
