-- This has to go in lua directory so it's found correctly

local M = {}

function M.set_opts()
  vim.opt.autowrite = true
  vim.g.tmpl_search_paths = { "~/.config/nvim/lua/templates" }

  -- and this is how you run an arbitrary command
  require("nvim-tree.commands").setup()
  vim.cmd "NvimTreeOpen"
  vim.cmd ":hi CursorLine term=bold cterm=bold guibg=Grey0 "
  vim.cmd "set cursorline number"

  require("dap").adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
      command = "node",
      -- 💀 Make sure to update this path to point to your installation
      args = { "", "${port}" },
    },
  }
  require("dap").configurations.javascript = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
  }

  require("custom.dap-mapping").mapping()
end

return M
