return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm", -- 主题风格，可选: "night", "storm", "day", "moon"
      transparent = true, -- 启用透明背景
      on_highlights = function(hl, colors)
        hl.Comment = { fg = "#FFFFFF", italic = true } -- 修改注释颜色 & 斜体
      end,
    },
  },
}
