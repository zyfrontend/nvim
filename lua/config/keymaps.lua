-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del
-- 插入模式下移动光标
map("i", "<C-h>", "<left>", { desc = "Insert: Move Left" })
map("i", "<C-j>", "<down>", { desc = "Insert: Move Down" })
map("i", "<C-k>", "<up>", { desc = "Insert: Move Up" })
map("i", "<C-l>", "<right>", { desc = "Insert: Move Right" })

-- 切换到下一个 buffer
map("i", "<C-n>", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<C-n>", ":bnext<CR>", { desc = "Next Buffer" })
-- 切换到上一个 buffer
map("i", "<C-p>", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<C-p>", ":bprevious<CR>", { desc = "Previous Buffer" })
--
-- -- 垂直分割窗口
-- map("n", "<Space>vv", ":vsp<CR>", { noremap = true, silent = true, desc = "Vertical Split" })
--
-- -- 垂直分割并关闭当前窗口
-- map("n", "<Space>vc", ":vsp | wincmd c<CR>", { noremap = true, silent = true, desc = "Vertical Split and Close" })
--
-- -- 水平分割窗口
-- map("n", "<Space>ss", ":sp<CR>", { noremap = true, silent = true, desc = "Horizontal Split" })
--
-- -- 水平分割并关闭当前窗口
-- map("n", "<Space>sc", ":sp | wincmd c<CR>", { noremap = true, silent = true, desc = "Horizontal Split and Close" })
--
-- 将当前光标所在单词转换为大写
map("n", "Z", "viwU", { noremap = true, silent = true, desc = "Convert word to uppercase" })

-- 将当前光标所在单词转换为小写
map("n", "z", "viwu", { noremap = true, silent = true, desc = "Convert word to lowercase" })

-- 解决 visual 选中粘贴替换只能粘贴一次的问题
map("x", "p", "P")

-- 设置 Tab 键切换到下一个搜索结果
-- map("n", "<Tab>", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
-- map("x", "<Tab>", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
-- map("o", "<Tab>", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
--
-- -- 设置 Shift+Tab 键切换到上一个搜索结果
-- map("n", "<S-Tab>", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
-- map("x", "<S-Tab>", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
-- map("o", "<S-Tab>", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
--
if vim.g.neovide then
  map({ "n", "v" }, "<c-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  map({ "n", "v" }, "<c-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
  map({ "n", "v" }, "<c-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
