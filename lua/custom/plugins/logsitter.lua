vim.api.nvim_create_augroup('LogSitter', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = 'LogSitter',
  pattern = 'javascript,go,lua,python,javascriptreact,jsx',
  callback = function()
    vim.keymap.set('n', '<leader>lg', function()
      require('logsitter').log()
    end, { desc = 'Add [L]o[G]' })
    vim.keymap.set('n', '<leader>lc', function()
      require('logsitter').clear_buf()
    end, { desc = '[L]ogs [C]lear' })
  end,
})

return {
  'gaelph/logsitter.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
