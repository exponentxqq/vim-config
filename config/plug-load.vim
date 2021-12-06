function! SourcePluginConfig()
	for config_file in readdir($HOME."/.vim/config/plugin")
	    exec "source ".$HOME."/.vim/config/plugin/".config_file
	endfor
endfunction

call SourcePluginConfig()

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/vim-peekaboo'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'

call plug#end()

