echo "load python file"

function! SetTitle()
    echom "set python title"
    call setline(1, "\#!/usr/bin/env python")
    call setline(2, "\# encoding: utf-8")
endfunction

if line('$') == 1 && empty(getline(1))
endif

augroup python | autocmd!
augroup end

