-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guifont = "UbuntuMono Nerd Font:h14"
-- 禁用拼写检查
vim.opt.spell = false

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "JetBrainsMono Nerd Font:h13"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_refresh_rate = 165
end
