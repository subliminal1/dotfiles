let php_sql_query = 1
let php_baselib = 1
let PHP_noArrowMatching = 1
let PHP_vintage_case_default_indent = 1
let php_phpdoc_folding = 0
let g:neomake_phpstan_level=5

setlocal autoindent
setlocal textwidth=120
setlocal wrap
setlocal colorcolumn=80,120
setlocal foldmethod=indent
setlocal foldlevel=1
setlocal foldnestmax=2

nnoremap <buffer> <silent> zM :setlocal foldlevel=1<CR>

" Fix highlighting PHPDOC types.
hi! link phpDocTags Conditional
hi! link phpDocParam phpDefine
hi! link phpDocIdentifier Character
