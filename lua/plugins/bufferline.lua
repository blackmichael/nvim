return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          truncate_names = false,
          sort_by = "id",
          numbers = "buffer_id",
          -- stylua: ignore
          close_command = function(n) Snacks.bufdelete(n) end,
          -- stylua: ignore
          right_mouse_command = function(n) Snacks.bufdelete(n) end,
          diagnostics = "nvim_lsp",
          always_show_bufferline = false,
          diagnostics_indicator = function(_, _, diag)
            local icons = LazyVim.config.icons.diagnostics
            local ret = (diag.error and icons.Error .. diag.error .. " " or "")
              .. (diag.warning and icons.Warn .. diag.warning or "")
            return vim.trim(ret)
          end,
           ---@param opts bufferline.IconFetcherOpts
          get_element_icon = function(opts)
            return LazyVim.config.icons.ft[opts.filetype]
          end,
          offsets = {
            {
              filetype = "neo-tree",
              text = "Neo-tree",
              text_align = "left",
              highlight = "Directory",
            },
            {
              filetype = "snacks_layout_box",
              text = "",
              text_align = "left",
              separator = true,
            },
          },
        },
      })
    end,
    keys = {
      {
        "<leader>bn",
        function()
          vim.ui.input({ prompt = "Buffer ID: " }, function(input)
            if input then
              require("bufferline").go_to(tonumber(input))
            end
          end)
        end,
        desc = "Navigate to buffer",
      },
      {
        "<leader>bf",
        "<cmd>BufferLinePick<cr>",
        desc = "Find (pick) a visible buffer",
      },
    },
  },
}
