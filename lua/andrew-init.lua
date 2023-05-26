
-- This has to go in lua directory so it's found correctly

local M = {}

function M.set_opts()

  vim.opt.autowrite = true
  vim.g.tmpl_search_paths = {'~/.config/nvim/lua/templates'}

  -- and this is how you run an arbitrary command
  require('nvim-tree.commands').setup()
  vim.cmd('NvimTreeOpen')
end

return M
