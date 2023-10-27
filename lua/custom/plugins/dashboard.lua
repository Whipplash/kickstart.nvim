return {

  'glepnir/dashboard-nvim',
  config = function()
    local db = require("dashboard")

    db.setup {
      theme = 'doom',
      config = {
          week_header = {
            enable = true
          },
          center = {
              {
                  icon = ' ',
                  icon_hl = '@variable',
                  desc = 'Find File',
                  desc_hl = 'String',
                  key = 'f',
                  keymap = 'SPC ff',
                  key_hl = 'Number',
                  action = 'Telescope find_files'
              },
              {
                  icon = ' ',
                  icon_hl = '@variable',
                  desc = 'File Browser',
                  desc_hl = 'String',
                  key = 'd',
                  keymap = 'SPC ed',
                  key_hl = 'Number',
                  action = 'Ex'
              },
              {
                  icon = '󰚰 ',
                  icon_hl = '@variable',
                  desc = 'Update',
                  desc_hl = 'String',
                  key = 'u',
                  keymap = ':PackerUpdate',
                  key_hl = 'Number',
                  action = 'PackerUpdate'
              },
              {
                  icon = ' ',
                  icon_hl = '@variable',
                  desc = 'Transparency Toggle',
                  desc_hl = 'String',
                  key = 't',
                  keymap = 'SPC tt',
                  key_hl = 'Number',
                  action = 'TransparentToggle'
              },
              {
                  icon = '󱓥 ',
                  icon_hl = '@variable',
                  desc = 'Edit Neovim',
                  desc_hl = 'String',
                  key = 'e',
                  keymap = 'SPC en',
                  key_hl = 'Number',
                  action = 'lua edit_nvim()' -- Declared in functions.lua
              },

          },
          footer = {
            "Do one thing, and do it well. - 'Doug McIlroy'"
          }
      }
  }
end,
}
