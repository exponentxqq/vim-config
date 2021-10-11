syntax on
filetype off
filetype plugin off
filetype indent off
filetype plugin indent on

set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc
set laststatus=2
set spell spelllang=en_us
set undofile
set number
set relativenumber
set ruler
set clipboard+=unnamed
set cursorline
set nobackup
set noswapfile
set showmatch
set matchtime=2
set textwidth=0
set nocompatible
set showcmd
set wildmenu
set shiftround
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set autochdir
set autoread
set nowrap
" set paste " 这会导致Insert模式下Ctrl组合键失效
set listchars=tab:>-,trail:-
set incsearch
set ignorecase
set smartcase
set hlsearch
set scroll=5

" 连续键配置
let mapleader="," " 设置连续键前缀为,(默认为\)
" 配置buffer快捷切换方式，使用:ls可以查看所有的buffer {{{
    nnoremap <leader>1 :1b<CR>
    nnoremap <leader>2 :2b<CR>
    nnoremap <leader>3 :3b<CR>
    nnoremap <leader>4 :4b<CR>
    nnoremap <leader>5 :5b<CR>
    nnoremap <leader>6 :6b<CR>
" }}}
" 分屏连续键设置{{{
    nnoremap <leader>vsp :vsp<CR>
    nnoremap <leader>sp :sp<CR>
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-h> <C-w>h
	nnoremap <C-l> <C-w>l
" }}}
" 设置连续键快捷插入成对符号 {{{
    vnoremap <leader>r( di(<Esc>pa)<Esc>
    vnoremap <leader>r{ di{<Esc>pa}<Esc>
    vnoremap <leader>r" di"<Esc>pa"<Esc>
    vnoremap <leader>r' di'<Esc>pa'<Esc>
    vnoremap <leader>r[ di[<Esc>pa]<Esc>
" }}}
" 缩进连续键设置：使用tab键缩进 {{{
    nnoremap <Tab> V>
    nnoremap <s-Tab> V<
    vnoremap <Tab> >gv
    vnoremap <s-Tab> <gv
" }}}
" 移动键设置 {{{
	nnoremap J 5j
	nnoremap K 5k
	nnoremap H 5h
	nnoremap L 5L
" }}}
" 保存退出快捷键 {{{
    noremap <leader>q <Esc>:q<CR>
    noremap <leader>s <Esc>:w<CR>
	noremap <leader>Q <Esc>:q!<CR>
	noremap <leader>S <Esc>:w!<CR>
" }}}
" 代码块收起/展开 {{{
	noremap + za
" }}}
nnoremap <leader><Esc> :nohlsearch<CR>
nnoremap <leader>y "+y
nnoremap <leader>p "+p

source $HOME/.vim/config/plug-load.vim

augroup default
	autocmd!
	autocmd BufWritePost *.vim source $HOME/.vim/vimrc
	autocmd BufWritePost vimrc source $HOME/.vim/vimrc
augroup end

