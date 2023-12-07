-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.neovide then
  vim.api.nvim_set_keymap(
    "n",
    "<F11>",
    [[:lua vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen<CR>]],
    { noremap = true, silent = true }
  )
end
