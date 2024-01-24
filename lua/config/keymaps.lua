-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.neovide then
  -- <F11> 控制全屏
  vim.api.nvim_set_keymap(
    "n",
    "<F11>",
    [[:lua vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen<CR>]],
    { noremap = true, silent = true }
  )
  -- "<C-=>" 放大字体 "<C-->" 缩小字体 "<C-0>" 恢复默认
  vim.keymap.set({ "n", "v" }, "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
