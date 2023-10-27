return {

  'glepnir/dashboard-nvim',
  dependencies = { {'nvim-tree/nvim-web-devicons'}},
  config = function()
    local db = require("dashboard")

    db.setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
          concat = 'Do one thing, and do it well. - "Doug McIlroy"',
        },
        shortcut = {
          { desc = '󰊳 Update',
            group = '@property',
            action = 'Lazy update',
            key = 'u'
            },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Apps',
            group = 'DiagnosticHint',
            action = 'Telescope app',
            key = 'a',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'Telescope dotfiles',
            key = 'd',
          },
        },

      packages = {
          enable = true
        }, -- show how many plugins neovim loaded
      -- limit how many projects list, action when you press key or enter it will run this action.
      -- action can be a functino type, e.g.
      -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
      project = {
          enable = true,
          limit = 8,
          icon = 'your icon',
          label = '',
          action = 'Telescope find_files cwd='
        },
      mru = {
          limit = 10,
          icon = 'your icon',
          label = '',
        },
      footer = {}, -- footer
        }
    }

end,
}
