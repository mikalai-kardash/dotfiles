return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require('tokyonight').setup({
			transparent = true,
			terminal_colors = true,
			styles = {},
		})
		vim.cmd.colorscheme("tokyonight-moon")
	end,
}
