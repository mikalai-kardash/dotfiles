local ts = require('telescope.builtin')
vim.keymap.set('n', '<Leader>pf', ts.find_files, { desc = '(P)roject (f)ind files' })

