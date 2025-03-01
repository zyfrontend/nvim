-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.mouse = "" -- 禁用鼠标

-- 设置折叠方式为语法或缩进（可根据需要更改）
vim.opt.foldmethod = "indent" -- 使用缩进方式折叠
vim.opt.foldlevel = 99 -- 默认展开所有折叠
