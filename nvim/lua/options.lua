-- NOTE: See ':help vim.opt'
vim.opt.number = true
vim.opt.relativenumber = true

-- Have Nerd font installed and enabled in the terminal
vim.g.have_nerd_font = false

vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Cursor
vim.opt.cursorline = true
vim.opt.scrolloff = 5

vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.inccommand = "split"
vim.opt.hlsearch = false

-- Long lines
vim.opt.wrap = false

-- Backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "100"

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
