local dap = require("dap")
dap.adapters.gdb = {
	type = "executable",
	command = "gdb",
	args = { "-i", "dap" },
}

for _, language in pairs({ "c", "cpp", "rust" }) do
	dap.configurations[language] = {
		{
			name = "Launch",
			type = "gdb",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
		},
	}
end

--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp
