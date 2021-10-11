setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
setlocal expandtab

echo "load html file"

augroup html
	autocmd!
augroup end

function! g:SetTitle()
    call setline(1, "<?php")
endfunction

