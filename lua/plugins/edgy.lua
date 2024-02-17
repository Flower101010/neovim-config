if true then
  return {
    {
      "folke/edgy.nvim",
      event = "VeryLazy",
      keys = {
        {
          "<leader>ue",
          function()
            require("edgy").toggle()
          end,
          desc = "Edgy Toggle",
        },
    -- stylua: ignore
    { "<leader>uE", function() require("edgy").select() end, desc = "Edgy Select Window" },
      },
      opts = function()
        local opts = {
          bottom = {
            {
              ft = "toggleterm",
              size = { height = 0.4 },
              filter = function(_, win)
                return vim.api.nvim_win_get_config(win).relative == ""
              end,
            },
            {
              ft = "noice",
              size = { height = 0.4 },
              filter = function(_, win)
                return vim.api.nvim_win_get_config(win).relative == ""
              end,
            },
            "Trouble",
            {
              ft = "trouble",
              filter = function(_, win)
                return vim.api.nvim_win_get_config(win).relative == ""
              end,
            },
            { ft = "qf", title = "QuickFix" },
            {
              ft = "help",
              size = { height = 20 },
              -- don't open help files in edgy that we're editing
              filter = function(buf)
                return vim.bo[buf].buftype == "help"
              end,
            },
            { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
            { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
          },
          left = {
            {
              title = "Neo-Tree",
              ft = "neo-tree",
              filter = function(buf)
                return vim.b[buf].neo_tree_source == "filesystem"
              end,
              pinned = true,
              open = function()
                vim.api.nvim_input("<esc><space>e")
              end,
              size = { height = 0.8 },
            },
            "neo-tree",
            { title = "Neotest Summary", ft = "neotest-summary" },
            {
              title = "Aerial",
              ft = "aerial",
              pinned = true,
              open = "AerialOpen",
            },
          },
          options = {
            left = { size = 18 },
            bottom = { size = 8 },
            right = { size = 20 },
            top = { size = 8 },
          },
          -- edgebar animations
          animate = {
            enabled = false,
          },

          keys = {
            -- increase width
            ["<c-Right>"] = function(win)
              win:resize("width", 2)
            end,
            -- decrease width
            ["<c-Left>"] = function(win)
              win:resize("width", -2)
            end,
            -- increase height
            ["<c-Up>"] = function(win)
              win:resize("height", 2)
            end,
            -- decrease height
            ["<c-Down>"] = function(win)
              win:resize("height", -2)
            end,
          },
        }
        return opts
      end,
    },
  }
end
