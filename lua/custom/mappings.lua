local M = {}

M.dap = {
  i = {
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
  },
  n = {
    ["<leader>db"] = {
      "<cmd>DapToggleBreakpoint<CR>",
      "Toggle breakpint",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
    ["]]"] = {
      function()
        require("illuminate").goto_next_reference(true)
      end,
      "goto next reference",
    },
    ["[["] = {
      function()
        require("illuminate").goto_prev_reference(true)
      end,
      "goto prev reference",
    },
  },
}

return M
