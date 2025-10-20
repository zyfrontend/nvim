return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = {
          prefix = "●",
          spacing = 2,
          pos = "above",
        },
        underline = true,
        signs = true,
        update_in_insert = false,
      },
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        rust = { "rustfmt", lsp_format = "fallback" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },
}
