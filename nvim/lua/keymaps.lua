local normal = function(keys, command, settings)
	vim.keymap.set("n", keys, command, settings)
end

normal("<esc>", "<cmd>nohlsearch<cr>")
normal("<leader>pv", vim.cmd.Ex, { desc = "(P)roject (V)iew" })
normal("<leader>f", function()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, { desc = "(F)file format" })
