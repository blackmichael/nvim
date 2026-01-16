return {
  -- Vespa support - https://blog.vespa.ai/interns-languageserver/#neovim-plugin
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        extension = {
          profile = "sd",
          sd = "sd",
          yql = "yql",
        },
      })
    end,
    opts = {
      servers = {
        vespa_ls = {
          cmd = { "java", "-jar", "/Users/michaelblack/.config/nvim/lsp/vespa/vespa-language-server.jar" },
        },
      },
    },
  },

  -- Markdown
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- Disable markdown diagnostics from lsp
        virtual_text = false,
      },
    },
  },

  -- Go
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              gofumpt = false,
            },
          },
        },
      },
    },
  },

  -- Typescript
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
      },
    },
  },
}
