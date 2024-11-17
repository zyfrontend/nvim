return {
  "keaising/im-select.nvim",
  lazy = false,
  opts = {
    default_im_select = "com.apple.keylayout.ABC",
    default_command = "im-select",
  },
  config = function(_, opts)
    -- 初始化 im-select 插件
    require("im_select").setup(opts)

    -- 设置自动切换为默认输入法
    vim.api.nvim_create_autocmd({ "InsertLeave", "CmdlineLeave" }, {
      callback = function()
        vim.fn.system(opts.default_command .. " " .. opts.default_im_select)
      end,
      desc = "Switch to default input method on Escape",
    })
  end,
}
-- return {
--   "keaising/im-select.nvim",
--   lazy = false,
--   opts = {
--     default_im_select = "com.apple.keylayout.ABC",
--     default_command = "im-select",
--   },
-- }
