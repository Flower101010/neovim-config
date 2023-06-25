-- 设置状态栏
vim.g.airline_extensions_tabline_enabled = 1
vim.g.airline_extensions_tabline_left_alt_sep = '|'
vim.g.airline_extensions_tabline_buffer_nr_show = 0
vim.g.airline_extensions_tabline_formatter = 'default'
vim.g.airline_extensions_keymap_enabled = 1
vim.g.airline_extensions_tabline_buffer_idx_mode = 1
vim.g.airline_extensions_tabline_buffer_idx_format = {
    ['0'] = '0 ',
    ['1'] = '1 ',
    ['2'] = '2 ',
    ['3'] = '3 ',
    ['4'] = '4 ',
    ['5'] = '5 ',
    ['6'] = '6 ',
    ['7'] = '7 ',
    ['8'] = '8 ',
    ['9'] = '9 '
}

-- 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
vim.api.nvim_set_keymap('n', '<leader>1', '<Plug>AirlineSelectTab1', {})
vim.api.nvim_set_keymap('n', '<leader>2', '<Plug>AirlineSelectTab2', {})
vim.api.nvim_set_keymap('n', '<leader>3', '<Plug>AirlineSelectTab3', {})
vim.api.nvim_set_keymap('n', '<leader>4', '<Plug>AirlineSelectTab4', {})
vim.api.nvim_set_keymap('n', '<leader>5', '<Plug>AirlineSelectTab5', {})
vim.api.nvim_set_keymap('n', '<leader>6', '<Plug>AirlineSelectTab6', {})
vim.api.nvim_set_keymap('n', '<leader>7', '<Plug>AirlineSelectTab7', {})
vim.api.nvim_set_keymap('n', '<leader>8', '<Plug>AirlineSelectTab8', {})
vim.api.nvim_set_keymap('n', '<leader>9', '<Plug>AirlineSelectTab9', {})

-- 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
vim.api.nvim_set_keymap('n', '<leader>-', '<Plug>AirlineSelectPrevTab', {})

-- 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
vim.api.nvim_set_keymap('n', '<leader>+', '<Plug>AirlineSelectNextTab', {})

-- 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
vim.api.nvim_set_keymap('n', '<leader>q', ':bp<cr>:bd #<cr>', {})

-- 修改了一些个人不喜欢的字符
if not vim.g.airline_symbols then
    vim.g.airline_symbols = {}
end
vim.g.airline_symbols.linenr = "CL" -- current line
vim.g.airline_symbols.whitespace = '|'
vim.g.airline_symbols.maxlinenr = 'Ml' -- maxline
vim.g.airline_symbols.branch = 'BR'
vim.g.airline_symbols.readonly = "RO"
vim.g.airline_symbols.dirty = "DT"
vim.g.airline_symbols.crypt = "CR"

