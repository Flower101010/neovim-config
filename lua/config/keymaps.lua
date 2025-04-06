-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set
if vim.g.neovide then
  -- <F11> 控制全屏
  map(
    "n",
    "<F11>",
    [[:lua vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen vim.g.neovide_scale_factor=0.9<CR>]],
    { noremap = true, silent = true, desc = "Toggle Fullscreen" }
  )
  -- "<C-=>" 放大字体 "<C-->" 缩小字体 "<C-0>" 恢复默认
  local change_scale_factor = function(delta)
    if delta == 1 then
      vim.g.neovide_scale_factor = 0.9
    else
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
    end

    vim.cmd("redraw!")
  end

  map("n", "<C-=>", function()
    change_scale_factor(0.1)
  end, { desc = "Zoom In" })
  map("n", "<C-->", function()
    change_scale_factor(-0.1)
  end, { desc = "Zoom Out" })

  map("n", "<C-0>", function()
    change_scale_factor(1)
  end, { desc = "Reset Zoom" })

  -- 透明度 快捷键 设置
  vim.g.neovide_opacity = 1.0

  local change_transparency = function(delta)
    vim.g.neovide_opacity = vim.g.neovide_opacity + delta
  end

  map({ "n", "v", "o" }, "<A-=>", function()
    change_transparency(0.01)
  end, { desc = "Increase Transparency" })

  map({ "n", "v", "o" }, "<A-->", function()
    change_transparency(-0.01)
  end, { desc = "Decrease Transparency" })

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
  map("n", "<F9>", ":lua ToggleTransparency()<CR>", { desc = "Toggle Transparency", noremap = true, silent = true })
  map("n", "<F8>", ":lua ToggleTransparency_other()<CR>", { noremap = true, silent = true })
end
