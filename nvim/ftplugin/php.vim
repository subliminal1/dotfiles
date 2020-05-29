let PHP_noArrowMatching = 1
let PHP_vintage_case_default_indent = 1

let php_baselib = 1
let php_folding=0
let php_html_load=0
let php_html_in_heredoc=0
let php_html_in_nowdoc=0

let php_xml_heredoc=0
let php_xml_nowdoc=0

let php_sql_query=0
let php_sql_heredoc=0
let php_sql_nowdoc=0


setlocal autoindent
setlocal textwidth=120
setlocal nowrap
setlocal colorcolumn=80,120
setlocal foldmethod=indent
setlocal foldlevel=1
setlocal foldnestmax=2

nnoremap <buffer> <silent> zM :setlocal foldlevel=1<CR>

" Fix highlighting PHPDOC types.
hi! link phpDocTags Conditional
hi! link phpDocParam phpDefine
hi! link phpDocIdentifier Character
