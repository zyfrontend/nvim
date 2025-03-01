-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.vscode then
  -- VSCode extension
  -- require("zy.hop")
else
  -- ordinary Neovim
  --
  -- require("zy.zysnippets")
end
