vim.api.nvim_create_augroup('LogSitter', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = 'LogSitter',
  pattern = 'javascript,go,lua,python,javascriptreact,jsx',
  callback = function()
    vim.keymap.set('n', '<leader>lg', function()
      require('logsitter').log()
    end)
  end,
})

return {
  'gaelph/logsitter.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
