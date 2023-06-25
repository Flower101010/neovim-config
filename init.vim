lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/indentline')
lua require('plugin-config/ultisnip')
lua require('plugin-config/vimtex')
"##########################################################
colorscheme zephyr


"括号自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {<CR>}<Esc>O

"########################################################
let g:airline_powerline_fonts = 1




