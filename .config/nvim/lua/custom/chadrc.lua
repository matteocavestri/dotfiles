---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  theme_toggle = { "catppuccin", "yoru" },
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- default/round/block/arrow (separators only for "default"; (round and block for the minimal only)
    overriden_modules = nil,
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

return M
