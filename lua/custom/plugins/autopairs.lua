-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
  config = function(_, opts)
    require('nvim-autopairs').setup(opts)

    require('nvim-autopairs').setup {
      disable_filetype = { 'TelescopePrompt', 'vim' },
    }
  end,
}
