return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = {
        layout = {
          preview = true,
        },
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            layout = {
              preview = false,
            },
          },
        },
        lsp = {
          symbols = {
            layout = {
              preview = false,
            },
          },
        },
      },
      dashboard = {
        sections = {
          { section = "header" },
          {
            pane = 2,
            section = "terminal",
            cmd = "dadjoke",
            height = 10,
            padding = 0,
          },
          { section = "keys", gap = 1, padding = 1 },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            pane = 2,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          { section = "startup" },
        },
      },
    },
    keys = {
      {
        "<leader>.",
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume last picker",
      },
    },

    -- TODO fix this so it doesn't override the mini.starter menu functionality
    -- config = function(_, config)
    --   vim.api.nvim_create_autocmd("VimEnter", {
    --     callback = function()
    --       -- Snacks.explorer()
    --     end,
    --   })
    -- end,
  },
}
