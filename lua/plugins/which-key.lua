if true then
  return {
    {
      "folke/which-key.nvim",
      lazy = true,
      opts = {
        defaults = {
          ["<localLeader>l"] = { name = "+vimtex" },
          ["<leader>d"] = { name = "+debug" },
        },
        window = {
          border = "none", -- none, single, double, shadow
          position = "bottom", -- bottom, top
          margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
          padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
          zindex = 1000, -- positive value to position WhichKey above other floating windows.
        },
      },
    },
  }
end
