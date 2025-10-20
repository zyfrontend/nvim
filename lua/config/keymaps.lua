-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.o.termguicolors = true
-- Make line numbers default
vim.o.number = true
-- 启用相对行号
vim.o.relativenumber = true
-- Keep signcolumn on by default
vim.o.signcolumn = "yes"
-- 禁用鼠标
vim.o.mouse = ""
-- 垂直滚动时保持上下各5行的可见区域
vim.o.scrolloff = 5
-- 水平滚动时保持左右各8列的可见区域
vim.o.sidescrolloff = 8

vim.keymap.set("i", "<C-h>", "<left>", { desc = "Insert: Move Left" })
vim.keymap.set("i", "<C-j>", "<down>", { desc = "Insert: Move Down" })
vim.keymap.set("i", "<C-k>", "<up>", { desc = "Insert: Move Up" })
vim.keymap.set("i", "<C-l>", "<right>", { desc = "Insert: Move Right" })
