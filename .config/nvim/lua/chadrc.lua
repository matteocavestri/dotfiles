local M = {}

M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "minimal",       -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- default/round/block/arrow separators only for "default"; (round and block for the minimal only)
    overriden_modules = nil,
    --  theme_toggle = { "catppuccin", "yoru" },
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

return M
