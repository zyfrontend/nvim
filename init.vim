autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
lua require('plugins')
lua require('vimrc')
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/after/plugin/defx-icons.rc.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim
" source ~/.config/nvim/colors/one_dark_pro.rc.vim
" source ~/.config/nvim/colors/gruvbox_material.rc.vim

