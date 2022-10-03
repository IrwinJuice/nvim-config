-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require('settings')
require('coc')

vim.g.catppucin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]

require("nvim-tree").setup()

vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>')
vim.keymap.set('n', '<C-A-l>', ':RustFmt<CR>')
vim.keymap.set('n', '<A-t>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<A-f>', ':NvimTreeFocus<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
