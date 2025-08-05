local functions = require "config.functions"

vim.keymap.set("n", "<localleader>rl", functions.toggle_relative_numbers, { desc = "Toggle [R]elative [L]ine numbering on/off" })
vim.keymap.set("n", "<localleader>l", functions.toggle_numbers, { desc = "Toggle [L]ine numbering on/off" })

vim.keymap.set("n", "<localleader>wo", function()
	---@type boolean
	local global = false
	functions.toggle_wrap(global)
end, { desc = "Toggle word [W]rap on/off (window only)" })

vim.keymap.set("n", "<localleader>ww", function()
	---@type boolean
	local global = true
	functions.toggle_wrap(global)
end, { desc = "Toggle word wrap on/off" })

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "te", "<cmd>tabedit")
vim.keymap.set("n", "ss", "<cmd>split<cr>")
vim.keymap.set("n", "sv", "<cmd>vsplit<cr>")
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")
