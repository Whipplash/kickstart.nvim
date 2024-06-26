local util = require 'lspconfig.util'
return {
  require 'lspconfig'.ansiblels.setup {
    cmd = { 'ansible-language-server', '--stdio' },
    settings = {
      ansible = {
        python = {
          interpreterPath = 'python',
        },
        ansible = {
          path = 'ansible',
        },
        executionEnvironment = {
          enabled = false,
        },
        validation = {
          enabled = true,
          lint = {
            enabled = true,
            path = 'ansible-lint',
          },
        },
      },
    },
    filetypes = { 'yml', 'yaml', 'yaml.ansible' },
    root_dir = util.root_pattern('ansible.cfg', '.ansible-lint'),
    single_file_support = false
  },
vim.keymap.set("n", "<leader>af", "<cmd>ansible-lint --fix -qq % > /dev/null 2>&1<CR>",
    {
      noremap = true,
      silent = true,
    }
  )
}
