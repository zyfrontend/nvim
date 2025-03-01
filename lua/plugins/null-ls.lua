return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = {
        -- ESLint 检查，自动读取项目的 ESLint 配置
        null_ls.builtins.diagnostics.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json", ".eslintrc.yml", "package.json" })
          end,
        }),

        -- 使用 ESLint 进行代码修复（自动修复分号）
        null_ls.builtins.formatting.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json", ".eslintrc.yml", "package.json" })
          end,
        }),

        -- 兼容 Prettier，只用于格式化，不影响 ESLint 规则
        null_ls.builtins.formatting.prettier.with({
          condition = function(utils)
            return utils.root_has_file({
              ".prettierrc",
              ".prettierrc.js",
              ".prettierrc.json",
              ".prettierrc.yml",
              "package.json",
            })
          end,
        }),
      }
      return opts
    end,
  },
}
