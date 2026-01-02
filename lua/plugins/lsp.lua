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
          -- vim.lsp.enable("vespa_ls")
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
}
