local M = {}

M.general={
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<leader>ds"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>ru"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dp"] = {
      function()
        require('dap-python').test_method()
      end,
      "Run Python debugger",
    }
  }
}

M.rustaceanvim = {
  plugin = true,
  n = {
    ["<leader>rd"] = {
      "<cmd> RustLsp debuggables <CR>",
      "Run Rust debuggables"
    }
  }
}

return M
