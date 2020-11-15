let PHP_noArrowMatching = 1
let PHP_vintage_case_default_indent = 1
let php_baselib = 0
let php_folding = 0
let php_html_load = 0
let php_html_in_heredoc = 0
let php_html_in_nowdoc = 0
let php_xml_heredoc = 0
let php_xml_nowdoc = 0
let php_sql_query = 0
let php_sql_heredoc = 0
let php_sql_nowdoc = 0
"let php_special_functions = 0

setlocal textwidth=80
setlocal colorcolumn=80,100
setlocal autoindent
setlocal copyindent

setlocal foldenable
setlocal foldmethod=indent foldnestmax=2
setlocal foldlevelstart=1 foldlevel=1
setlocal foldnestmax=4


hi! link phpDocTags Orange
hi! link phpDocParam Red
hi! link phpDocIdentifier Blue
hi! link phpClass None
hi! link phpClasses None
hi! link phpIdentifier Blue
hi! link phpMethodsVar Blue
hi! link phpType Red
