" 切割窗口
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" 跨窗口移动光标
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" 移动行首行尾
nnoremap L $
nnoremap H ^
" 滚动5行
noremap <C-j> 5j
noremap <C-k> 5k
" 保存退出
noremap <S-w> :w<Return>
noremap <S-q> :q<Return>
" ESC 映射
inoremap jk <Esc>
" 选中状态下复制到系统剪切板
vmap <C-c> "+y
" 关闭 buffers 窗口
nmap bd :bdelete<CR>
" 插入模式下移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
