if true then
  return {
    {
      "nvimdev/dashboard-nvim",
      event = "VimEnter",
      opts = {
        config = {
          week_header = {
            enable = true,
          },
        },
      },
    },
  }
end
