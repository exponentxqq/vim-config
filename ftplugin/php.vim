setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal filetype=php

augroup php
	autocmd!
	autocmd BufNewFile * :call SetTitle()
	autocmd BufNewFile * :echom "hahahah"
augroup end

function SetTitle()
    call setline(1, "<?php")
    call setline(2, "")
    call setline(3, "")
endfunction

