local functions = require 'config.functions'

local toggle_wrap = function()
  ---@type boolean
  local global = true
  functions.toggle_wrap(global)
end

vim.keymap.set('n', '<M-z>', toggle_wrap, { desc = 'Toggle word wrap on/off' })
vim.keymap.set('i', '<M-z>', toggle_wrap, { desc = 'Toggle word wrap on/off' })

vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'H', '_')
vim.keymap.set('n', 'L', 'g_')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'te', '<cmd>tabedit<cr>')
vim.keymap.set('n', '<Tab>', ':tabnext<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':tabprevious<cr>', { noremap = true, silent = true })
vim.keymap.set('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })
vim.keymap.set('n', 'ss', '<cmd>split<cr>')
vim.keymap.set('n', 'sv', '<cmd>vsplit<cr>')
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<cr>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<cr>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<cr>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<cr>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<cr>')
vim.keymap.set('n', '<leader>n', '<cmd>Oil<cr>', { desc = 'Open Netrw' })
