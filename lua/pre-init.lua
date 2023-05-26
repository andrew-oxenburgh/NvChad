
-- This has to go in lua directory so it's found correctly

local M = {}

function M.set_opts()
  -- turn off netrw
  vim.g.loaded_netrw       = 1
  vim.g.loaded_netrwPlugin = 1

end

return M

