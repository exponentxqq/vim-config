function! SourcePluginConfig()
	for config_file in readdir($HOME."/.vim/config/plugin")
		exec "source ".$HOME."/.vim/config/plugin/".config_file
	endfor
endfunction

call SourcePluginConfig()

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdtree'

call plug#end()


