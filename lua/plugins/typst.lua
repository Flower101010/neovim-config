if true then
  return {
    {
      "chomosuke/typst-preview.nvim",
      lazy = false, -- or ft = 'typst'
      version = "0.1.*",
      build = function()
        require("typst-preview").update()
      end,
    },
    {
      "kaarmu/typst.vim",
      ft = "typst",
      lazy = false,
    },
  }
end
