return {
  'brneor/gitui.nvim',
  config = function()
    vim.keymap.set('n', '<leader>gg', ':GitUi<CR>', { desc = 'Exit terminal mode' })
  end,
}
