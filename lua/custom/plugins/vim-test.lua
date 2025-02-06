local M = {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  -- vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'),
  -- vim.keymap.set('n', '<leader>a', ':TestSuite<CR>'),
  -- vim.keymap.set('n', '<leader>l', ':TestLayiwCR<CR>'),
  -- vim.keymap.set('n', '<leader>g', ':TestVisit<CR>'),
}
M.config = function()
  vim.cmd "let test#strategy = 'vimux'"
end

return M
