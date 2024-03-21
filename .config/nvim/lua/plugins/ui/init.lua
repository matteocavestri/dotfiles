return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = function()
      return require("plugins.ui.noice")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
}
