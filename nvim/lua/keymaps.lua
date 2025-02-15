local normal = function(keys, command, settings) 
	vim.keymap.set('n', keys, command, settings)
end


normal('<Esc>', '<cmd>nohlsearch<CR>')
normal('<Leader>pv', vim.cmd.Ex, { desc = '(P)roject (V)iew' })

