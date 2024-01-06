-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guifont = "UbuntuMono Nerd Font:h14"

-- 设置 shell 为 powershell.exe
vim.o.shell = "pwsh.exe"

-- 设置 shellxquote
vim.o.shellxquote = ""

-- 设置 shellcmdflag
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "

-- 设置 shellquote
vim.o.shellquote = ""

-- 设置 shellpipe
vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"

-- 设置 shellredir
vim.o.shellredir = "| Out-File -Encoding UTF8 %s"

-- 禁用拼写检查
vim.opt.spell = false

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_refresh_rate = 165
end
