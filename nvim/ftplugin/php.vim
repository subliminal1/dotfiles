let php_sql_query = 1
let php_baselib = 1
"let php_folding = 0
"let php_phpdoc_folding = 0
let PHP_noArrowMatching = 1
let PHP_vintage_case_default_indent = 1

" Fix highlighting PHPDOC types.
hi! link phpDocTags phpDefine
hi! link phpDocParam phpType

:call CocAction('fold')
setlocal foldlevel=1
setlocal foldnestmax=2
