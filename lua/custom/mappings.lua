---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<F2>"] = { "<C-R>=strftime('%c')<CR>", "insert current date" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
