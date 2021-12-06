echo "load php file"

if line('$') == 1 && empty(getline(1))
    echo "set title"
endif

setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal filetype=php

augroup php
	autocmd!
augroup end

function! SetTitle()
    call setline(1, "<?php")
endfunction

