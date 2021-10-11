augroup python
	autocmd!
	autocmd BufNewFile *.py :call SetTitle()
augroup end

function SetTitle()
    call setline(1, "\#!/usr/bin/env python")
    call setline(2, "\# encoding: utf-8")
endfunction

