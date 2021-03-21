" Disable built-in syntax file
let b:did_ftplugin = 1
let b:current_syntax = 1

setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
setlocal textwidth=115
setlocal colorcolumn=80,120
setlocal autoindent
setlocal nowrap
setlocal nosmarttab
setlocal foldmethod=indent
setlocal foldnestmax=2
setlocal foldlevel=1

"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

setlocal formatoptions+=ro

nnoremap <silent><buffer> zM :setlocal foldlevel=1<CR>
nnoremap <silent><buffer> zm :setlocal foldlevel=1<CR>

hi! link TSNote Todo
hi! link TSWarning Todo
