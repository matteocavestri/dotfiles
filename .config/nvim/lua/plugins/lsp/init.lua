local overrides = require("configs.overrides")

return {
  -- TODO: Modificare Mason da overrides e portarlo a plugins.lsp
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require("plugins.lsp.lspconfig")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require("plugins.lsp.formlint")
    end,
  },
}
