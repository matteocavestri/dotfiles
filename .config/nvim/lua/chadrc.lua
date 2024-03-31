---@type ChadrcConfig
local M = {}

local headers = require "configs.headers"

local function get_header()
  if vim.g.random_header then
    local headerNames = {}
    for name, _ in pairs(headers) do
      table.insert(headerNames, name)
    end
    local randomName = headerNames[math.random(#headerNames)]
    local randomHeader = headers[randomName]
    return randomHeader
  else
    return headers["pacman"]
  end
end

M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "round", -- default/round/block/arrow separators only for "default"; (round and block for the minimal only)
    overriden_modules = nil,
    --  theme_toggle = { "catppuccin", "yoru" },
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
    order = { "treeOffset", "buffers", "tabs" },
  },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  nvdash = {
    load_on_startup = true,
    header = get_header(),
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰔚  Find All", "Spc f a", "Telescope find_all" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      -- { "  Find Projects", "Spc f p", "Telescope projects" },
      -- { "󰔚  Find Sessions", "Spc f s", "Telescope persisted" },
      -- { "  Themes", "Spc f t", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
