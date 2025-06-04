return {
  'zbirenbaum/copilot.lua',
  version = '*',
  lazy = true,
  cmd = 'Copilot',
  event = 'InsertEnter',
  enabled = true,
  config = function()
    require('copilot').setup {
      panel = { enabled = false },
      suggestion = { enabled = false },
    }
  end,
}
