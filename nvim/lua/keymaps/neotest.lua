local neotest = require('neotest')
vim.keymap.set("n", "<leader>rt", function () neotest.run().run(vim.fn.getcwd()) end, { desc = "Tests - Run", noremap = true })
