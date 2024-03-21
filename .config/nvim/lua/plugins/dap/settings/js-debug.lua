require("dap").adapters["pwa-node"] = {
	type = "server",
	host = "localhost",
	port = "8500",
	executable = {
		command = "node",
		-- 💀 Make sure to update this path to point to your installation
		args = { "js-debug-adapter", "8500" },
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
