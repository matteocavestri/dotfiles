require('lint').linters_by_ft = {
  javascript = {'eslint'},
  typescript = {'eslint'}
}

vim.api.nvim_create_autocmd({ "bufWritePost"}, {
  callback = function ()
    require("lint").try_lint()
  end,
})
