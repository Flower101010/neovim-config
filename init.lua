-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
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
