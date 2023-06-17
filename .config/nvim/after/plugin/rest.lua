-- create keymaps for rest.nvim
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', '<leader>rr', '<Plug>RestNvim', opts)
map('n', '<leader>rp', '<Plug>RestNvimPreview', opts)
map('n', '<leader>rh', '<Plug>RestNvimLast', opts)
