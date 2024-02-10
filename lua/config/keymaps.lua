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
  local change_scale_factor = function(delta)
    if delta == 1 then
      vim.g.neovide_scale_factor = 1
    else
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
    end

    vim.cmd("redraw!")
  end

  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(0.1)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(-0.1)
  end)

  vim.keymap.set("n", "<C-0>", function()
    change_scale_factor(1)
  end)

  -- 透明度 快捷键 设置
  vim.g.neovide_transparency = 1.0

  local change_transparency = function(delta)
    vim.g.neovide_transparency = vim.g.neovide_transparency + delta
  end

  vim.keymap.set({ "n", "v", "o" }, "<A-=>", function()
    change_transparency(0.01)
  end)

  vim.keymap.set({ "n", "v", "o" }, "<A-->", function()
    change_transparency(-0.01)
  end)

  -- Function to toggle transparency between 0.8 and 1.0
  function ToggleTransparency()
    if vim.g.neovide_transparency == 1 then
      vim.g.neovide_transparency = 0.8
    else
      vim.g.neovide_transparency = 1
    end
    vim.cmd(":lua vim.g.neovide_transparency = " .. vim.g.neovide_transparency)
  end

  -- Function to toggle transparency between 0 and 1.0
  function ToggleTransparency_other()
    if vim.g.neovide_transparency == 1 then
      vim.g.neovide_transparency = 0
    else
      vim.g.neovide_transparency = 1
    end
    vim.cmd(":lua vim.g.neovide_transparency = " .. vim.g.neovide_transparency)
  end

  -- Map the key to the toggle function
  vim.api.nvim_set_keymap("n", "<F9>", ":lua ToggleTransparency()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<F8>", ":lua ToggleTransparency_other()<CR>", { noremap = true, silent = true })
end

-- 设置 <Tab> 键为超级 Tab 键 有提示时自动补全，否则执行原有功能
vim.keymap.set("i", "<Tab>", function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, { desc = "Super Tab" })
