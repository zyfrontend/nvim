return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = function()
    local is_transparent = false
    local theme_style = "night"
    if not vim.g.neovide == true then
      is_transparent = true
      theme_style = "night" -- 确保这里是 "Night"（大小写敏感）
    end
    return {
      style = theme_style,
      transparent = is_transparent,
      styles = {
        floats = "transparent", -- 设置浮动窗口的背景透明
        sidebars = "transparent", -- 设置侧边栏的背景透明
        comments = { italic = false }, -- 注释不使用斜体
        keywords = { italic = false }, -- 关键字不使用斜体
        functions = { italic = false }, -- 函数不使用斜体
        variables = { italic = false }, -- 变量不使用斜体
      },
      -- 其他自定义选项
      on_colors = function(colors)
        -- 你可以在此处修改其他颜色配置
        -- 例如修改背景色
        colors.bg = "#1E1E1E" -- 更深的背景色
      end,
      on_highlights = function(highlights, colors)
        -- 在此处可以修改语法高亮样式
        highlights.Comment = { fg = colors.blue, italic = true } -- 修改评论颜色为蓝色并设置为斜体
        highlights.Function = { fg = colors.green } -- 修改函数颜色为绿色
      end,
    }
  end,
}
