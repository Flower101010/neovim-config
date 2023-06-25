-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- nvimTree
map('n', '<F3>', ':NvimTreeToggle<CR>', opt)

