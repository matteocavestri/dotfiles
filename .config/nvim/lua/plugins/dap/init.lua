-- NOTE: Debugging
return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		{ "nvim-neotest/nvim-nio" },
		{
			"mfussenegger/nvim-dap",
			config = function()
				-- NOTE: Check out this for guide
				-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
				local dap = require("dap")
				vim.fn.sign_define(
					"DapBreakpoint",
					{ text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" }
				)

				local dapui = require("dapui")
				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open()
				end

				-- dap.listeners.before.event_terminated["dapui_config"] = function()
				--   dapui.close()
				-- end

				-- dap.listeners.before.event_exited["dapui_config"] = function()
				--   dapui.close()
				-- end

				-- NOTE: Make sure to install the needed files/exectubles through mason
				require("plugins.dap.settings.cpptools")
				require("plugins.dap.settings.bash-debug-adapter")
				require("plugins.dap.settings.firefox-debug-adapter")
				require("plugins.dap.settings.java-debug")
				require("plugins.dap.settings.node-debug2")
				require("plugins.dap.settings.debugpy")
				require("plugins.dap.settings.go-debug-adapter")
				require("plugins.dap.settings.js-debug")
			end,
		},
	},
	opts = {
		layouts = {
			{
				elements = {
					-- Elements can be strings or table with id and size keys.
					{ id = "scopes", size = 0.25 },
					"breakpoints",
					"stacks",
					"watches",
				},
				size = 40, -- 40 columns
				position = "left",
			},
			{
				elements = {
					"repl",
					"console",
				},
				size = 0.25, -- 25% of total lines
				position = "bottom",
			},
		},
	},
}

--[[
-- NOTE: Bisogna sistemare tutti i debugger e fare del test

return {
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("plugins.dap.dap")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("plugins.dap.dap-ui")
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      require("plugins.dap.dap-py")
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
}

]]
