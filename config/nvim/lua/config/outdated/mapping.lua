-- lua/config/mapping.lua

-- General key mappings
vim.api.nvim_set_keymap('n', '<M-q>', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', '<M-q>', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>--', ':setl number!<CR>', { noremap = true, silent = true })

-- Disable cursor keys
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true })

-- Insert mode movement keys
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-d>', '<DEL>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-b>', '<BS>', { noremap = true })

-- Buffer list navigation
vim.api.nvim_set_keymap('n', '[b', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[B', ':bfirst<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']B', ':blast<CR>', { noremap = true, silent = true })

-- Gtags mappings
vim.api.nvim_set_keymap('n', '<Space>f', ':Gtags -f %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>j', ':GtagsCursor<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>d', ':<C-u>exe("Gtags ".expand("<cword>"))<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>r', ':<C-u>exe("Gtags -r ".expand("<cword>"))<CR>', { noremap = true, silent = true })



vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "<Leader>d", function()
  vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Line Diagnostics" })
