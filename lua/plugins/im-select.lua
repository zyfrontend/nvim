return {
  "keaising/im-select.nvim",
  lazy = false,
  opts = {
    default_im_select = "com.apple.keylayout.ABC", -- 默认输入法
    input_im_select = "com.apple.inputmethod.SCIM.ITABC", -- 输入模式用的输入法（中文）
    default_command = "im-select",
  },
  config = function(_, opts)
    -- 初始化 im-select 插件
    require("im_select").setup(opts)

    -- 退出插入模式或命令模式时切换为默认输入法
    vim.api.nvim_create_autocmd({ "InsertLeave", "CmdlineLeave" }, {
      callback = function()
        vim.fn.system(opts.default_command .. " " .. opts.default_im_select)
      end,
      desc = "Switch to default input method on Escape",
    })

    -- 进入插入模式时切换为中文输入法
    vim.api.nvim_create_autocmd("InsertEnter", {
      callback = function()
        vim.fn.system(opts.default_command .. " " .. opts.default_im_select)
      end,
      desc = "Switch to input method for typing",
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
