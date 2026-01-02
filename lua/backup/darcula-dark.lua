return {
  {
    "xiantang/darcula-dark.nvim",
    -- lazy = false,
    -- priority = 1000,
    --
    -- This is the KEY line LazyVim looks for
    opts = {},

    config = function()
      require("darcula").setup({
        transparent = false,
        dim_inactive = false,
        terminal_colors = true,
        treesitter = true,

        integrations = {
          treesitter = true,
          lsp = true,
          cmp = true,
          gitsigns = true,
          telescope = true,
          snacks = true,
        },

        sidebars = {
          "snacks",
          "lazy",
          "neo-tree",
          "qf",
        },
      })
    end,
  },

  -- Tell LazyVim this is the active colorscheme
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "darcula-dark",
  --   },
  -- },
}
