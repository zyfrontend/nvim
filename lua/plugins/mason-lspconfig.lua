return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    -- Mason 设置
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "",
        },
      },
    })

    -- 自动安装的 LSP 服务器
    mason_lspconfig.setup({
      ensure_installed = {
        "ansiblels",
        "bashls",
        "html",
        "jsonls",
        "rust_analyzer",
        "typescript-language-server", -- 替代 tsserver
        "volar",
      },
      automatic_installation = true,
    })

    -- 自动安装的工具
    mason_tool_installer.setup({
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "delve",
        "eslint-lsp",
        "eslint_d",
        "gofumpt",
        "goimports",
        "golangci-lint-langserver",
        "gomodifytags",
        "gopls",
        "gotests",
        "groovy-language-server",
        "html-lsp",
        "impl",
        "json-lsp",
        "lua-language-server",
        "pyright",
        "rust-analyzer",
        "solidity-ls",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vim-language-server",
        "vue-language-server",
        "yaml-language-server",
      },

      auto_update = false,
      run_on_start = true,
      start_delay = 3000, -- 3 second delay
      debounce_hours = 5, -- at least 5 hours between attempts to install/update
    })

    -- 配置 LSP 服务器
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({})
      end,
      -- ["typescript-language-server"] = function()
      --   lspconfig.tsserver.setup({
      --     cmd = { "typescript-language-server", "--stdio" },
      --     root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
      --     single_file_support = true,
      --   })
      -- end,
      ["volar"] = function()
        lspconfig.volar.setup({
          filetypes = { "vue" }, -- 处理 .vue 文件
          root_dir = lspconfig.util.root_pattern("package.json", "vite.config.ts", ".git"),
        })
      end,
    })
  end,
}
