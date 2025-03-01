-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("zy.luasnip")
if vim.g.vscode then
  -- VSCode extension
  -- require("zy.hop")
else
  -- ordinary Neovim
  --
end
