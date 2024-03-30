local status_ok, jdtls = pcall(require, "jdtls")
if not status_ok then
  return
end

local bufnr = vim.api.nvim_get_current_buf()

local java_debug_path = vim.fn.stdpath "data" .. "/mason/packages/java-debug-adapter/"
local java_test_path = vim.fn.stdpath "data" .. "/mason/packages/java-test/"
local jdtls_path = vim.fn.stdpath "data" .. "/mason/packages/jdtls/"

local bundles = {
  vim.fn.glob(java_debug_path .. "extension/server/com.microsoft.java.debug.plugin-*.jar", 1),
}
vim.list_extend(bundles, vim.split(vim.fn.glob(java_test_path .. "extension/server/*.jar", 1), "\n"))

local equinox_launcher = ""
for _, file in pairs(vim.split(vim.fn.glob(vim.fn.stdpath "data" .. "/mason/packages/jdtls/plugins/*jar"), "\n")) do
  if file:match "launcher_" then
    equinox_launcher = file
    break
  end
end

local OS_NAME
if vim.fn.has "mac" == 1 then
  OS_NAME = "mac"
elseif vim.fn.has "unix" == 1 then
  OS_NAME = "linux"
elseif vim.fn.has "win32" == 1 then
  OS_NAME = "win"
else
  vim.notify("Unsupported OS", vim.log.levels.WARN, { title = "Jdtls" })
end

local WORKSPACE_PATH = vim.fn.stdpath "data" .. "/workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = WORKSPACE_PATH .. project_name

local config = {
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-javaagent:" .. jdtls_path .. "/lombok.jar",
    "-Xms1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-jar",
    equinox_launcher,
    "-configuration",
    jdtls_path .. "config_" .. OS_NAME,
    "-data",
    workspace_dir,
  },
  on_attach = require("plugins.lsp.opts").on_attach,
  capabilities = require("plugins.lsp.opts").capabilities,
  root_dir = require("jdtls.setup").find_root { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },
  init_options = { bundles = bundles },
}

local keymap = vim.keymap.set
keymap("n", "A-o", ":lua require'jdtls'.organize_imports()<cr>", { silent = true, buffer = bufnr })
keymap("n", "crv", ":lua require'jdtls'.extract_variable()<cr>", { silent = true, buffer = bufnr })
keymap("v", "crv", "<Esc>:lua require'jdtls'.extract_variable(true)<cr>", { silent = true, buffer = bufnr })
keymap("n", "crc", ":lua require'jdtls'.extract_constant()<cr>", { silent = true, buffer = bufnr })
keymap("v", "crc", "<Esc>:lua require'jdtls'.extract_constant(true)<cr>", { silent = true, buffer = bufnr })
keymap("v", "crm", "<Esc>:lua require'jdtls'.extract_method(true)<cr>", { silent = true, buffer = bufnr })

vim.cmd [[
    command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
    command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
    command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
    command! -buffer JdtJol lua require('jdtls').jol()
    command! -buffer JdtBytecode lua require('jdtls').javap()
    command! -buffer JdtJshell lua require('jdtls').jshell()
    command! -buffer JavaTestCurrentClass lua require('jdtls').test_class()
    command! -buffer JavaTestNearestMethod lua require('jdtls').test_nearest_method()
]]

jdtls.start_or_attach(config)
