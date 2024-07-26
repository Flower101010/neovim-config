return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = true,
    ft = "typst",
    build = function()
      require("typst-preview").update()
    end,
  },
}
