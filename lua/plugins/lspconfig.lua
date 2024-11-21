local util = require("lspconfig.util")
local function get_typescript_server_path(root_dir)
  local global_ts = "/Users/zy/.nvm/versions/node/v18.20.4/lib/node_modules/typescript/lib"
  local found_ts = ""
  local function check_dir(path)
    found_ts = util.path.join(path, "node_modules", "typescript", "lib")
    if util.path.exists(found_ts) then
      return path
    end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

return {
  -- LSP 配置
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
          -- cmd = { "/Users/zy/.nvm/versions/node/v18.20.4/bin/tsserver" },
          cmd = { "tsserver", "--stdio" },
          root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json", ".git"),
          inlayHints = {
            parameterNames = { enabled = "all" },
            parameterTypes = { enabled = true },
            variableTypes = { enabled = true },
            propertyDeclarationTypes = { enabled = true },
          },
          document_highlight = {
            enabled = false,
          },
          on_attach = function(client)
            client.server_capabilities.documentHighlightProvider = false
          end,
        },
        volar = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
          root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
          on_new_config = function(new_config, new_root_dir)
            new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
          end,
        },
      },
    },
  },
}
