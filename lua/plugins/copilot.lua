return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      -- Point to the specific node version to avoid conflict with node projects
      copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.21.1/bin/node",
      suggestion = { enabled = true },
      panel = { enabled = false },
      filetypes = {
        markdown = false,
        help = true,
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "copilot",
      },
    },
    dependencies = {
      "mason-org/mason.nvim",
    },
  },
  {
    "saghen/blink.cmp",
    optional = true,
    dependencies = { "fang2hou/blink-copilot" },
    opts = {
      keymap = {
        -- Map Shift+Esc to cancel completion and fallback to normal behavior
        ["<S-Esc>"] = { "cancel", "fallback" },
      },
      sources = {
        default = { "copilot", "lsp", "path", "snippets", "buffer" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-copilot",
            async = true,
          },
        },
      },
    },
  },
}
