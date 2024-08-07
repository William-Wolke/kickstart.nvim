return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvimtools/none-ls-extras.nvim',
  },
  lazy = true,
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        require 'none-ls.diagnostics.eslint_d',
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.eslint_d,
      },
    }
    -- vim.keymap.set('n', '<leader>', vim.lsp.buf.format, {})
  end,
}
