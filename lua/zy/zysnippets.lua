-- lua/config/lua_snip.lua
local ls = require("luasnip")
-- 加载 Snipmate 格式的代码片段，按需加载
require("luasnip.loaders.from_snipmate").lazy_load({
  path = "~/.config/nvim/snippets",
})

-- 设置一些 LuaSnip 配置
ls.config.set_config({
  history = true,
  delete_check_events = "TextChanged",
})
