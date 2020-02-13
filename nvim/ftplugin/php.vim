let php_sql_query = 0
let php_baselib = 1
let PHP_noArrowMatching = 1
let PHP_vintage_case_default_indent = 1
let php_folding = 2
let php_phpdoc_folding = 0
let g:neomake_phpstan_level=5

setlocal foldlevel=1

" Fix highlighting PHPDOC types.
hi! link phpDocTags Conditional
hi! link phpDocParam phpDefine
hi! link phpDocIdentifier Character
