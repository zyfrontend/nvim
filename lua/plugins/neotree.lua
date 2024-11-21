return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = false },
      group_empty_dirs = false,
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true, -- 显示过滤项目
        show_hidden = true, -- 显示隐藏文件
      },
    },
  },
}
