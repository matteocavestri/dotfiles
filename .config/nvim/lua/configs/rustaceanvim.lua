local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

-- local on_attach = require("nvchad.configs.lspconfig").defaults().on_attach
-- local capabilities = require("nvchad.configs.lspconfig").defaults().capabilities

vim.g.rustaceanvim = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}
