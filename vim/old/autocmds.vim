function! StripTrailingWhitespace()
    " Don't strip on these file types.
    if &ft =~ 'vim'
        return
    endif
    %s/\s\+$//e
endfunction

" Trim whitespace
autocmd BufWritePre * call StripTrailingWhitespace()

autocmd FileType rst setlocal indentexpr=

" Attach completion to all buffers
"autocmd BufEnter * lua require'completion'.on_attach()
