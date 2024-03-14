return {
  'zbirenbaum/copilot.lua',
  version = '*',
  lazy = true,
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = { enabled = false },
      suggestion = { enabled = false },
    }
  end,
}
