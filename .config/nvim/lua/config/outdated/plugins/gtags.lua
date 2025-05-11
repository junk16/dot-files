-- Gtags mappings in Lua
vim.keymap.set("n", "<C-g>", ":Gtags<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-y>", ":Gtags -f %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":GtagsCursor<CR>", { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set("n", "<C-n>", ":cn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-m>", ":cp<CR>", { noremap = true, silent = true })
