-- @author      : andrew (andrew@$HOSTNAME)
-- @file        : dap-mapping
-- @created     : Saturday May 27, 2023 23:32:39 NZST

local M = {}

function M.mapping()
  local wkl = require "which-key"

  function SetJavascriptKeybinds()
    local dap = require "dap"
      wkl.register({
      ["z"] = { dap.toggle_breakpoint, "toggle breakpoint" },
    }, {
      prefix = "<leader>z",
      buffer = nil,
      mode = "n",
    })
    wkl.register({
      ["<F5>"] = { dap.toggle_breakpoint, "toggle breakpoint" },
    }, {
      buffer = nil,
    })
 end

  vim.cmd "autocmd FileType javascript lua SetJavascriptKeybinds()"
end

return M
