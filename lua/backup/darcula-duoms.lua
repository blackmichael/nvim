-- ~/.config/nvim/lua/plugins/darcula.lua
return {
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "darcula",
  --   },
  -- },
  {
    "doums/darcula",
    -- lazy = false,
    -- priority = 1000,
    config = function()
      vim.cmd([[colorscheme darcula]])

      -- Exact JetBrains GoLand Darcula colors
      local colors = {
        bg = "#2B2B2B",
        bg_dark = "#1E1E1E",
        bg_lighter = "#323232",
        fg = "#A9B7C6",
        fg_dark = "#808080",

        -- Syntax colors (matched to GoLand)
        keyword = "#CC7832", -- keywords, type names, built-in types
        method = "#FFC66D", -- function/method names
        type_ref = "#A9B7C6", -- type references (Context, etc)
        string = "#6A8759", -- strings
        number = "#6897BB", -- numbers
        constant = "#9876AA", -- constants, nil, true, false
        comment = "#808080", -- comments (with grey 128,128,128)
        param = "#A9B7C6", -- parameters
        local_var = "#A9B7C6", -- local variables

        -- UI colors
        border = "#323232",
        selection = "#214283",
        line_highlight = "#323232",
        gutter_fg = "#606366",

        -- Diagnostics
        error = "#BC3F3C",
        warning = "#A9B7C6",
        info = "#6A8759",
        hint = "#6897BB",
      }

      local hl = vim.api.nvim_set_hl

      -- Editor
      hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
      hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "FloatBorder", { fg = colors.border, bg = colors.bg_dark })
      hl(0, "CursorLine", { bg = colors.line_highlight })
      hl(0, "CursorLineNr", { fg = colors.fg, bg = colors.line_highlight })
      hl(0, "LineNr", { fg = colors.gutter_fg })
      hl(0, "SignColumn", { bg = colors.bg })
      hl(0, "Visual", { bg = colors.selection })
      hl(0, "Search", { bg = "#32593D", fg = colors.fg })
      hl(0, "IncSearch", { bg = "#155221", fg = colors.fg })

      -- Base Syntax (fallbacks)
      hl(0, "Comment", { fg = colors.comment, italic = true })
      hl(0, "Constant", { fg = colors.constant })
      hl(0, "String", { fg = colors.string })
      hl(0, "Character", { fg = colors.string })
      hl(0, "Number", { fg = colors.number })
      hl(0, "Boolean", { fg = colors.constant })
      hl(0, "Float", { fg = colors.number })
      hl(0, "Identifier", { fg = colors.fg })
      hl(0, "Function", { fg = colors.method })
      hl(0, "Statement", { fg = colors.keyword })
      hl(0, "Conditional", { fg = colors.keyword })
      hl(0, "Repeat", { fg = colors.keyword })
      hl(0, "Label", { fg = colors.keyword })
      hl(0, "Operator", { fg = colors.fg })
      hl(0, "Keyword", { fg = colors.keyword })
      hl(0, "Exception", { fg = colors.keyword })
      hl(0, "PreProc", { fg = colors.keyword })
      hl(0, "Include", { fg = colors.keyword })
      hl(0, "Define", { fg = colors.keyword })
      hl(0, "Macro", { fg = colors.keyword })
      hl(0, "Type", { fg = colors.keyword })
      hl(0, "StorageClass", { fg = colors.keyword })
      hl(0, "Structure", { fg = colors.keyword })
      hl(0, "Special", { fg = colors.keyword })
      hl(0, "SpecialChar", { fg = colors.string })
      hl(0, "Tag", { fg = colors.method })
      hl(0, "Delimiter", { fg = colors.fg })
      hl(0, "SpecialComment", { fg = colors.comment, italic = true })
      hl(0, "Error", { fg = colors.error })
      hl(0, "Todo", { fg = colors.number, bg = colors.bg, bold = true })

      -- Treesitter - General
      hl(0, "@variable", { fg = colors.local_var })
      hl(0, "@variable.builtin", { fg = colors.constant })
      hl(0, "@variable.parameter", { fg = colors.param })
      hl(0, "@variable.member", { fg = colors.fg })
      hl(0, "@constant", { fg = colors.constant })
      hl(0, "@constant.builtin", { fg = colors.constant })
      hl(0, "@module", { fg = colors.fg })
      hl(0, "@string", { fg = colors.string })
      hl(0, "@string.escape", { fg = colors.keyword })
      hl(0, "@string.special", { fg = colors.string })
      hl(0, "@character", { fg = colors.string })
      hl(0, "@number", { fg = colors.number })
      hl(0, "@boolean", { fg = colors.constant })
      hl(0, "@float", { fg = colors.number })
      hl(0, "@function", { fg = colors.method })
      hl(0, "@function.builtin", { fg = colors.method })
      hl(0, "@function.call", { fg = colors.method })
      hl(0, "@function.method", { fg = colors.method })
      hl(0, "@function.method.call", { fg = colors.method })
      hl(0, "@constructor", { fg = colors.method })
      hl(0, "@keyword", { fg = colors.keyword })
      hl(0, "@keyword.function", { fg = colors.keyword })
      hl(0, "@keyword.return", { fg = colors.keyword })
      hl(0, "@keyword.operator", { fg = colors.keyword })
      hl(0, "@keyword.import", { fg = colors.keyword })
      hl(0, "@type", { fg = colors.type_ref })
      hl(0, "@type.builtin", { fg = colors.keyword })
      hl(0, "@type.definition", { fg = colors.fg })
      hl(0, "@attribute", { fg = colors.method })
      hl(0, "@property", { fg = colors.fg })
      hl(0, "@comment", { fg = colors.comment, italic = true })
      hl(0, "@punctuation.delimiter", { fg = colors.fg })
      hl(0, "@punctuation.bracket", { fg = colors.fg })
      hl(0, "@punctuation.special", { fg = colors.fg })
      hl(0, "@tag", { fg = colors.method })
      hl(0, "@tag.attribute", { fg = colors.fg })
      hl(0, "@tag.delimiter", { fg = colors.method })

      -- Go-specific Treesitter highlights
      hl(0, "@keyword.go", { fg = colors.keyword })
      hl(0, "@keyword.function.go", { fg = colors.keyword })
      hl(0, "@keyword.return.go", { fg = colors.keyword })
      hl(0, "@keyword.operator.go", { fg = colors.keyword })
      hl(0, "@type.go", { fg = colors.type_ref })
      hl(0, "@type.builtin.go", { fg = colors.keyword })
      hl(0, "@function.go", { fg = colors.method })
      hl(0, "@function.call.go", { fg = colors.method })
      hl(0, "@function.method.go", { fg = colors.method })
      hl(0, "@function.method.call.go", { fg = colors.method })
      hl(0, "@variable.parameter.go", { fg = colors.param })
      hl(0, "@constant.builtin.go", { fg = colors.constant })
      hl(0, "@field.go", { fg = colors.fg })
      hl(0, "@namespace.go", { fg = colors.fg })

      -- Semantic tokens (LSP)
      hl(0, "@lsp.type.namespace", { fg = colors.fg })
      hl(0, "@lsp.type.type", { fg = colors.type_ref })
      hl(0, "@lsp.type.class", { fg = colors.type_ref })
      hl(0, "@lsp.type.enum", { fg = colors.type_ref })
      hl(0, "@lsp.type.interface", { fg = colors.type_ref })
      hl(0, "@lsp.type.struct", { fg = colors.type_ref })
      hl(0, "@lsp.type.parameter", { fg = colors.param })
      hl(0, "@lsp.type.variable", { fg = colors.local_var })
      hl(0, "@lsp.type.property", { fg = colors.fg })
      hl(0, "@lsp.type.enumMember", { fg = colors.constant })
      hl(0, "@lsp.type.function", { fg = colors.method })
      hl(0, "@lsp.type.method", { fg = colors.method })
      hl(0, "@lsp.type.macro", { fg = colors.keyword })
      hl(0, "@lsp.type.decorator", { fg = colors.method })
      hl(0, "@lsp.type.keyword", { fg = colors.keyword })
      hl(0, "@lsp.mod.declaration", { fg = colors.method })
      hl(0, "@lsp.mod.readonly", { fg = colors.constant })

      -- LSP
      hl(0, "LspReferenceText", { bg = colors.line_highlight })
      hl(0, "LspReferenceRead", { bg = colors.line_highlight })
      hl(0, "LspReferenceWrite", { bg = colors.line_highlight })
      hl(0, "DiagnosticError", { fg = colors.error })
      hl(0, "DiagnosticWarn", { fg = colors.warning })
      hl(0, "DiagnosticInfo", { fg = colors.info })
      hl(0, "DiagnosticHint", { fg = colors.hint })
      hl(0, "DiagnosticVirtualTextError", { fg = colors.error, bg = colors.bg })
      hl(0, "DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.bg })
      hl(0, "DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg })
      hl(0, "DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.bg })

      -- Telescope
      hl(0, "TelescopeNormal", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "TelescopeBorder", { fg = colors.border, bg = colors.bg_dark })
      hl(0, "TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "TelescopePromptBorder", { fg = colors.border, bg = colors.bg_dark })
      hl(0, "TelescopePromptTitle", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "TelescopePreviewTitle", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "TelescopeResultsTitle", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "TelescopeSelection", { fg = colors.fg, bg = colors.line_highlight })
      hl(0, "TelescopeMatching", { fg = colors.method, bold = true })

      -- Neo-tree / File explorers
      hl(0, "NeoTreeNormal", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "NeoTreeDirectoryName", { fg = colors.fg })
      hl(0, "NeoTreeDirectoryIcon", { fg = colors.fg })
      hl(0, "NeoTreeFileName", { fg = colors.fg })
      hl(0, "NeoTreeFileIcon", { fg = colors.fg })
      hl(0, "NeoTreeGitModified", { fg = colors.number })
      hl(0, "NeoTreeGitAdded", { fg = colors.string })
      hl(0, "NeoTreeGitDeleted", { fg = colors.error })
      hl(0, "NeoTreeRootName", { fg = colors.method, bold = true })

      -- Snacks (LazyVim's file explorer)
      hl(0, "SnacksNormal", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "SnacksNormalNC", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "SnacksBorder", { fg = colors.border, bg = colors.bg_dark })
      hl(0, "SnacksTitle", { fg = colors.fg, bg = colors.bg_dark, bold = true })
      hl(0, "SnacksFooter", { fg = colors.comment, bg = colors.bg_dark })
      hl(0, "SnacksDir", { fg = colors.fg })
      hl(0, "SnacksFile", { fg = colors.fg })
      hl(0, "SnacksIndent", { fg = colors.gutter_fg })

      -- Which-key
      hl(0, "WhichKey", { fg = colors.method })
      hl(0, "WhichKeyGroup", { fg = colors.number })
      hl(0, "WhichKeyDesc", { fg = colors.fg })
      hl(0, "WhichKeySeparator", { fg = colors.comment })
      hl(0, "WhichKeyFloat", { bg = colors.bg_dark })
      hl(0, "WhichKeyBorder", { fg = colors.border, bg = colors.bg_dark })

      -- Completion menu (nvim-cmp)
      hl(0, "Pmenu", { fg = colors.fg, bg = colors.bg_lighter })
      hl(0, "PmenuSel", { fg = colors.fg, bg = colors.selection })
      hl(0, "PmenuSbar", { bg = colors.bg_lighter })
      hl(0, "PmenuThumb", { bg = colors.gutter_fg })
      hl(0, "CmpItemAbbr", { fg = colors.fg })
      hl(0, "CmpItemAbbrMatch", { fg = colors.method, bold = true })
      hl(0, "CmpItemAbbrMatchFuzzy", { fg = colors.method, bold = true })
      hl(0, "CmpItemKind", { fg = colors.number })
      hl(0, "CmpItemMenu", { fg = colors.comment })

      -- Gitsigns
      hl(0, "GitSignsAdd", { fg = colors.string })
      hl(0, "GitSignsChange", { fg = colors.number })
      hl(0, "GitSignsDelete", { fg = colors.error })

      -- BufferLine / Tabs
      hl(0, "BufferLineFill", { bg = colors.bg_dark })
      hl(0, "BufferLineBackground", { fg = colors.fg_dark, bg = colors.bg_dark })
      hl(0, "BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
      hl(0, "BufferLineBufferVisible", { fg = colors.fg_dark, bg = colors.bg_dark })
      hl(0, "BufferLineSeparator", { fg = colors.bg_dark, bg = colors.bg_dark })
      hl(0, "BufferLineSeparatorSelected", { fg = colors.bg_dark, bg = colors.bg })
      hl(0, "BufferLineSeparatorVisible", { fg = colors.bg_dark, bg = colors.bg_dark })

      -- Statusline (Lualine)
      hl(0, "StatusLine", { fg = colors.fg, bg = colors.bg_lighter })
      hl(0, "StatusLineNC", { fg = colors.fg_dark, bg = colors.bg_dark })

      -- Indent guides
      hl(0, "IndentBlanklineChar", { fg = colors.line_highlight })
      hl(0, "IndentBlanklineContextChar", { fg = colors.gutter_fg })
      hl(0, "IblIndent", { fg = colors.line_highlight })
      hl(0, "IblScope", { fg = colors.gutter_fg })

      -- Dashboard
      hl(0, "DashboardHeader", { fg = colors.number })
      hl(0, "DashboardCenter", { fg = colors.method })
      hl(0, "DashboardFooter", { fg = colors.comment })

      -- Notify
      hl(0, "NotifyBackground", { bg = colors.bg_dark })
      hl(0, "NotifyERRORBorder", { fg = colors.error, bg = colors.bg_dark })
      hl(0, "NotifyWARNBorder", { fg = colors.warning, bg = colors.bg_dark })
      hl(0, "NotifyINFOBorder", { fg = colors.info, bg = colors.bg_dark })
      hl(0, "NotifyDEBUGBorder", { fg = colors.hint, bg = colors.bg_dark })
      hl(0, "NotifyTRACEBorder", { fg = colors.constant, bg = colors.bg_dark })

      -- Noice
      hl(0, "NoicePopup", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "NoicePopupmenu", { fg = colors.fg, bg = colors.bg_lighter })
      hl(0, "NoicePopupmenuSelected", { fg = colors.fg, bg = colors.selection })
      hl(0, "NoiceCmdline", { fg = colors.fg, bg = colors.bg_dark })
      hl(0, "NoiceCmdlinePopupBorder", { fg = colors.border, bg = colors.bg_dark })

      -- Markdown
      hl(0, "markdownH1", { fg = colors.method, bold = true })
      hl(0, "markdownH2", { fg = colors.method, bold = true })
      hl(0, "markdownH3", { fg = colors.method, bold = true })
      hl(0, "markdownH4", { fg = colors.method, bold = true })
      hl(0, "markdownH5", { fg = colors.method, bold = true })
      hl(0, "markdownH6", { fg = colors.method, bold = true })
      hl(0, "markdownCode", { fg = colors.string })
      hl(0, "markdownCodeBlock", { fg = colors.string })
      hl(0, "markdownCodeDelimiter", { fg = colors.string })
      hl(0, "markdownUrl", { fg = colors.number, underline = true })
      hl(0, "markdownLink", { fg = colors.constant })
      hl(0, "markdownLinkText", { fg = colors.constant })
    end,
  },
}
