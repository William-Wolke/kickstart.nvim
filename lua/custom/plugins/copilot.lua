return {
  'zbirenbaum/copilot.lua',
  version = '*',
  lazy = true,
  cmd = 'Copilot',
  event = 'InsertEnter',
  enabled = false,
  config = function()
    require('copilot').setup {
      panel = { enabled = false },
      suggestion = { enabled = false },
    }
  end,
}
