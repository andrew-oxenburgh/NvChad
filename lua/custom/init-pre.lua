
local M = {}

function M.set_opts ()
  -- turn off newtw
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- source custom/vimrc
  local vimrc = vim.fn.stdpath "config" .. "/lua/custom/vimrc"
  vim.cmd('source ' .. vimrc)
end



return M
