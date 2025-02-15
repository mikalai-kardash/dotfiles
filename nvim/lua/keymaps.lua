local normal = function(keys, command, settings)
	vim.keymap.set("n", keys, command, settings)
end

normal("<Esc>", "<cmd>nohlsearch<CR>")
normal("<Leader>pv", vim.cmd.Ex, { desc = "(P)roject (V)iew" })
normal("<Leader>ff", function()
	require("conform").format({
		async = true,
		lsp_fallback = true,
	})
end, { desc = "(F)file format" })
