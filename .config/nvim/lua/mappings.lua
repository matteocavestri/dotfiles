require "nvchad.mappings"

-- add yours here
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local map = vim.keymap.set
local nomap = vim.keymap.del

-- Delete Mappings
nomap("n", "<leader>pt")
nomap("n", "<leader>th")

-- General key mappings

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- DAP

map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Continue", silent = true })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step Over", silent = true })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step Into", silent = true })
map("n", "<leader>du", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Step Out", silent = true })
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Breakpoint", silent = true })
map(
  "n",
  "<leader>dB",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Breakpoint Condition", silent = true }
)
map("n", "<leader>dd", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Dap UI", silent = true })
map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Run Last", silent = true })

-- ChatGPT key mappings

map("n", "<leader>cg", "<cmd> ChatGPT <CR>", { desc = "ChatGPT" })

-- Todo Comments mappings

map("n", "<leader>fT", "<cmd>TodoTelescope<CR>", { desc = "Find Todos" })

-- Markdown Preview
map("n", "<leader>m", function()
  if vim.bo.filetype == "markdown" then
    vim.cmd "MarkdownPreviewToggle"
  else
    vim.notify("Only available in markdown", vim.log.levels.WARN, { title = "Markdown-Preview" })
  end
end, { desc = "Markdown Preview" })

-- Compiler

map("n", "<leader>rr", "<cmd>CompilerRedo<CR>", { desc = "Redo Last Action", silent = true })
map("n", "<leader>ro", "<cmd>CompilerOpen<CR>", { desc = "Compiler Open", silent = true })
map("n", "<leader>rs", "<cmd>CompilerStop<CR>", { desc = "Stop All Tasks", silent = true })
map("n", "<leader>rt", "<cmd>CompilerToggleResults<CR>", { desc = "Toggle Results", silent = true })

-- Lspsaga

map("n", "<leader>la", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action", silent = true })
map("v", "<leader>la", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action", silent = true })
map("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", { desc = "Code Outline", silent = true })
map("n", "<leader>lI", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Incoming Calls", silent = true })
map("n", "<leader>lO", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Outgoing Calls", silent = true })
map("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { desc = "Rename", silent = true })
map("n", "<leader>lj", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic", silent = true })
map("n", "<leader>lk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Prev Diagnostic", silent = true })

-- Neogit - diffview

map("n", "<leader>gn", "<cmd>Neogit<CR>", { desc = "Neogit" })
map("n", "<leader>gc", "<cmd>Neogit commit<CR>", { desc = "Neogit Commit" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open DiffView" })
map("n", "<leader>gD", "<cmd>DiffviewClose<CR>", { desc = "Close DiffView" })

-- Telescope

map("n", "<leader>gm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope commits" })
map("n", "<leader>ft", "<cmd>Telescope themes<CR>", { desc = "Telescope find themes" })
map("n", "<leader>fm", "<cmd>Telescope terms<CR>", { desc = "Telescope pick hidden term" })

-- CodeSnap

map("v", "<leader>s", ":<C-U>CodeSnap<CR>", { noremap = true, silent = true, desc = "Save CodeSnap in clipboard" })
map("v", "<leader>S", ":<C-U>CodeSnapSave<CR>", { noremap = true, silent = true, desc = "Save CodeSnap in ~/.snap" })

-- Obsidian

map("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Obsidian open" })
map("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Obsidian new" })
map("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Obsidian template" })
