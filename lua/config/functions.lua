local M = {}

local function toggle_relative_numbers()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end

local function toggle_numbers()
  vim.opt.number = not vim.opt.number:get()
end

---@param global boolean indicates if we should toggle word wrap for all windows or not
local function toggle_wrap(global)
  if global then
    ---@type boolean
    local new_state = not vim.o.wrap
    vim.o.wrap = new_state

    for _, win in ipairs(vim.api.nvim_list_wins()) do
      vim.api.nvim_win_set_option(win, 'wrap', new_state)
    end
  else
    vim.wo.wrap = not vim.wo.wrap
  end
end

M.toggle_relative_numbers = toggle_relative_numbers
M.toggle_numbers = toggle_numbers
M.toggle_wrap = toggle_wrap

return M
