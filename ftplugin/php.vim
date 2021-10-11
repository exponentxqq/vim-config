setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal filetype=php

echo "php"

augroup php
	autocmd!
	autocmd BufNewFile *.php :call s:SetTitle()
augroup end

function s:SetTitle()
    call setline(1, "<?php")
    call setline(2, "")
    call setline(3, "")
endfunction

