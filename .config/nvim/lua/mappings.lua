require("nvchad.mappings")

-- add yours here

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- General key mappings

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })

-- DAP

map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Dap Continue", silent = true })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Dap Step Over", silent = true })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Dap Step Into", silent = true })
map("n", "<leader>du", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Dap Step Out", silent = true })
map(
	"n",
	"<leader>db",
	"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
	{ desc = "Dap Toggle Breakpoint", silent = true }
)
map(
	"n",
	"<leader>dB",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Breakpoint Condition", silent = true }
)
map("n", "<leader>dd", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Dap UI", silent = true })
map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Dap Run Last", silent = true })

-- ChatGPT key mappings

map("n", "<leader>cg", "<cmd> ChatGPT <CR>", { desc = "ChatGPT" })

-- Todo Comments mappings

map("n", "<leader>fT", "<cmd>TodoTelescope<CR>", { desc = "Find Todos" })

-- Markdown Preview
map("n", "<leader>m", function()
	if vim.bo.filetype == "markdown" then
		vim.cmd("MarkdownPreviewToggle")
	else
		vim.notify("Only available in markdown", vim.log.levels.WARN, { title = "Markdown-Preview" })
	end
end, { desc = "Markdown Preview" })

-- Compiler

map("n", "<leader>rr", "<cmd>CompilerRedo<CR>", { desc = "Compiler Redo Last Action", silent = true })
map("n", "<leader>ro", "<cmd>CompilerOpen<CR>", { desc = "Compiler Open", silent = true })
map("n", "<leader>rs", "<cmd>CompilerStop<CR>", { desc = "Compiler Stop All Tasks", silent = true })
map("n", "<leader>rt", "<cmd>CompilerToggleResults<CR>", { desc = "Compiler Toggle Results", silent = true })
