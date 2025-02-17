local normal = function(keys, command, settings)
	vim.keymap.set("n", keys, command, settings)
end

-- Move line up and down
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '>-2<cr>gv=gv", { desc = "Move line up" })

-- Search results navigation
vim.keymap.set("n", "n", "nzz", { desc = "Next search result" })
vim.keymap.set("n", "N", "Nzz", { desc = "Prev search result" })

-- Page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })

-- Redo
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- Remove search highlight
normal("<esc>", "<cmd>nohlsearch<cr>")

-- Show file manager netrw
normal("<leader>pv", vim.cmd.Ex, { desc = "File manager" })

-- Telescope
normal("<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })

normal("<leader>pd", function()
	local file = vim.fn.expand("%")
	require("telescope.builtin").find_files({
		cwd = path.abspath(file),
	})
end, { desc = "Find in same dir" })

normal("<leader>nc", function()
	require("telescope.builtin").find_files({
		cwd = "~/.config/nvim/",
	})
end, { desc = "Find in config" })

-- Join (append) next line to current line
normal("J", "mzJ`z", { desc = "Join next line" })

-- Conform: text file format
normal("<leader>f", function()
	-- vim.lsp.buf.format()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, { desc = "File format" })

-- NO-OP
normal("Q", "<nop>")

-- LSP
normal("<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions" })

normal("<leader>cl", function()
	vim.lsp.codelens.run()
end, { desc = "Code lens" })

normal("<leader>cs", function()
	vim.lsp.buf.document_symbol()
end, { desc = "Document symbols" })

normal("<leader>cd", function()
	vim.lsp.buf.definition()
end, { desc = "Definition" })

normal("<leader>ci", function()
	vim.lsp.buf.implementation()
end, { desc = "Implementation" })

normal("<leader>cr", function()
	vim.lsp.buf.references()
end, { desc = "References" })

normal("<leader>rn", function()
	vim.lsp.buf.rename()
end, { desc = "Rename" })

normal("K", function()
	vim.lsp.buf.hover()
end, { desc = "Hover" })

vim.keymap.set("i", "<C-h>", function()
	vim.lsp.buf.signature_help()
end, { desc = "Show func signature" })

local telescope = require("telescope.builtin")
normal("<leader>h", telescope.help_tags, { desc = "Help" })
normal("<leader>s", telescope.live_grep, { desc = "Search" })
