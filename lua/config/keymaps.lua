-- Define a shorter name for the mapping function to keep things clean
local map = vim.keymap.set

-- Press Space + d to open a floating window with the error message
map('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show Error Message" })

-- Press [d and ]d to instantly jump between errors in the file
map('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous error" })
map('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next error" })
