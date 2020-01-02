let php_sql_query = 1
let php_baselib = 1
let php_folding = 0

" Fix highlighting PHPDOC types.
hi! link phpDocTags phpDefine
hi! link phpDocParam phpType

setlocal foldmethod=indent foldlevel=1 foldnestmax=2
