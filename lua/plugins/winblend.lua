if true then
  local winblendValue = vim.o.winblend
  -- value between 0-100 0 for fully opaque and 100 for fully transparent
  return {
    {
      "telescope.nvim",
      lazy = true,
      opts = {

        defaults = {
          winblend = winblendValue,
        },
      },
    },
    {
      "folke/which-key.nvim",
      lazy = true,
      opts = {
        window = {
          winblend = winblendValue,
        },
      },
    },
  }
end
