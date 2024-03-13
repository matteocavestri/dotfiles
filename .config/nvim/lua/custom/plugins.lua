local overrides = require("custom.configs.overrides")
local plugins = {
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
--[[  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  }, ]]--
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
    {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      require("dapui").setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = overrides.treesitter,
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
--[[  {
    "mistricky/codesnap.nvim",
    build = "make",
    lazy = "true",
    cmd = "CodeSnapPreviewOn",
    opts = {
      mac_window_bar = false,-- (Optional) MacOS style title bar switch
      opacity = true, -- (Optional) The code snap has some opacity by default, set it to false for 100% opacity 
      watermark = "CodeSnap.nvim", -- (Optional) you can custom your own watermark, but if you don't like it, just set it to ""
      preview_title = "CodeSnap.nvim", -- (Optional) preview page title
      editor_font_family = "JetBrainsMono Nerd Font", -- (Optional) preview code font family
      watermark_font_family = "Pacifico", -- (Optional) watermark font family
    },
    config = function (_, opts)
      require("codesnap").setup(opts)
    end
  }, ]]--
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  }
}
return plugins
