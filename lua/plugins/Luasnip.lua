return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  lazy = true, -- 启用懒加载
  config = function()
    -- 加载 Snipmate 格式的代码片段，按需加载
    require("luasnip.loaders.from_snipmate").lazy_load({
      path = "~/.config/nvim/snippets",
    })

    -- 其他 LuaSnip 配置
    local ls = require("luasnip")
    ls.config.set_config({
      history = true,
      delete_check_events = "TextChanged",
    })

    print("LuaSnip loaded:", vim.inspect(ls.snippets))
  end,
}
