require("config.lazy")

-- Set <space> as the leader key
-- See ':help mapleader'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require("options")
require("keymaps")

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins from lua/plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})

require("telescope").load_extension("fzf")
require("keymaps.zenmode")

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
