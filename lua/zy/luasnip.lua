return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- 你可以根据需要调整版本
  build = "make install_jsregexp", -- 安装 jsregexp (如果需要)
  lazy = true, -- 启用懒加载
  config = function()
    -- 加载 LuaSnip 配置
    local ls = require("luasnip")

    -- 设置 LuaSnip 配置
    ls.config.set_config({
      history = true,
      delete_check_events = "TextChanged", -- 在文本改变时检查删除片段
    })

    -- 确保路径正确处理
    local snippets_path = vim.fn.expand("~/.config/nvim/snippets/typescript.snippets")

    -- 加载 Snipmate 格式的代码片段，按需加载
    local status, err = pcall(function()
      require("luasnip.loaders.from_snipmate").lazy_load({
        path = snippets_path,
      })
    end)

    -- 错误处理：检查片段加载是否成功
    if not status then
      print("Error loading snippets:", err)
    else
      print("Snippets loaded from:", snippets_path)
    end

    -- 调试输出：查看片段是否加载成功
    local snippets = ls.snippets
    if snippets then
      print("LuaSnip loaded:", vim.inspect(snippets))
    else
      print("No snippets found")
    end
  end,
}
