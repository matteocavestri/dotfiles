require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- General key mappings
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

-- DAP (Debug Adapter Protocol) key mappings
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>ds", "<cmd> DapContinue <CR>", { desc = "Run or continue the debugger" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })

-- Crates key mappings
map("n", "<leader>ru", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update crates" })

-- DAP Python key mappings
map("n", "<leader>dps", function()
  require("dap-python").test_method()
end, { desc = "Run Python debugger" })

-- Rustacean Vim key mappings
map("n", "<leader>drs", "<cmd> RustLsp debuggables <CR>", { desc = "Run Rust debuggables" })

-- DAP Go key mappings
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })
map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })

-- Gopher key mappings
map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add yaml struct tags" })

-- ChatGPT key mappings
map("n", "<leader>cg", "<cmd> ChatGPT <CR>", { desc = "ChatGPT" })

-- Todo Comments mappings
map("n", "<cmd>TodoTelescope<cr>", { desc = "Find Todos" })
