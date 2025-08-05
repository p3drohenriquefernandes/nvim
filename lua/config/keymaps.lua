local functions = require "config.functions"

vim.keymap.set("n", "\\rl", functions.toggle_relative_numbers, { desc = "Toggle [R]elative [L]ine numbering on/off" })
vim.keymap.set("n", "\\l", functions.toggle_numbers, { desc = "Toggle [L]ine numbering on/off" })

vim.keymap.set("n", "\\wo", function()
	---@type boolean
	local global = false
	functions.toggle_wrap(global)
end, { desc = "Toggle word [W]rap on/off (window only)" })

vim.keymap.set("n", "\\ww", function()
	---@type boolean
	local global = true
	functions.toggle_wrap(global)
end, { desc = "Toggle word wrap on/off" })

vim.keymap.set("n", "x", "d")
vim.keymap.set("x", "x", "d")
vim.keymap.set("n", "xx", "dd")
vim.keymap.set("n", "X", "D")
