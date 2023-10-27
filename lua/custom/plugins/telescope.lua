return {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function ()
    local builtin = require('telescope.builtin')

    require('telescope').setup {
        defaults = {
          layout_config = {
            vertical = { width = 0.5 }
            -- other layout configuration here
          },
          -- other defaults configuration here
        },
        -- other configuration values here

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {}),
        vim.keymap.set('n', '<leader>fg', function()
          builtin.grep_string({ search = vim.fn.input("Grep > ") }); -- Snagged from thePrimagen, but it's useful for searching for text mentions across many files. REQUIRES RIPGREP TO BE INSTALLED.
        end),
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {}),
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    }
  end,
}
