-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.guifont = "JetBrainsMono Nerd Font,Source Han Sans SC VF,Source Han Sans VF:h13"

if vim.fn.executable('pwsh')  then
  vim.cmd("set shell=pwsh")
end


-- 设置窗口透明度
vim.o.winblend = 50
-- 设置弹出菜单透明度
vim.o.pumblend = 80

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "JetBrainsMono Nerd Font,Source Han Sans SC VF,Source Han Sans VF:h13"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_refresh_rate = 165
  vim.g.neovide_refresh_rate_idle = 5
  -- 分析器，该分析器在左上角显示帧时间图
  vim.g.neovide_profiler = false
end

if not vim.fn.executable('pwsh') then
  if vim.fn.executable("sioyek.exe") then
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_view_sioyek_exe = "sioyek.exe"
    vim.g.vimtex_callback_progpath = "wsl nvim"
  elseif vim.fn.executable("mupdf.exe") then
    vim.g.vimtex_view_general_viewer = "mupdf.exe"
  elseif vim.fn.executable("SumatraPDF.exe") then
    vim.g.vimtex_view_general_viewer = "SumatraPDF.exe"
  end
end
