setlocal formatoptions=ornl1j

setlocal textwidth=120
setlocal colorcolumn=0
setlocal autoindent
setlocal tabstop=2 shiftwidth=2
setlocal foldenable foldlevelstart=2 foldlevel=2
setlocal wrapmargin=2
setlocal wrap 
setlocal linebreak


let g:vim_markdown_conceal_code_blocks = 1
let g:vim_markdown_no_default_key_mappings = 1 " disable plasticboy mappings
let g:vim_markdown_folding_disabled = 1 " disable plasticboy folding
let g:markdown_folding = 1 " use native folding
