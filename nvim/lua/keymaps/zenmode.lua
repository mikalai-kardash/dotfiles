vim.keymap.set('n', '<leader>zz', function() 
	require('zen-mode').toggle({})
end, { desc = "(Z)en mode" })
