if true then
  return {
    {
      "zbirenbaum/copilot.lua",
      opts = {
        filetypes = {
          markdown = false,
          help = false,
          yaml = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          tex = false,
          ["."] = false,
          typst = false,
        },
      },
    },
  }
end
