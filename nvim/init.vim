" Plugins {{{
call plug#begin('~/.cache/vim/plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/stanangeloff/php.vim'
Plug 'https://github.com/2072/PHP-Indenting-for-VIm'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/masukomi/vim-markdown-folding'
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'chriskempson/base16-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/neomake/neomake'

call plug#end()
" }}}

call neomake#configure#automake('nrwi', 500)

filetype indent plugin on
syntax on

" Theme {{{
set termguicolors
colorscheme base16-tomorrow-night-eighties

let g:lightline = {
      \ 'colorscheme': 'base16',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
" }}}

set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
set hidden
set noswapfile
set noshowcmd
set noshowmode
set spell

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

" Text
set textwidth=80
set nowrap

" Indentation
set autoindent
set smartindent
set copyindent

" Interface
set relativenumber
set noruler
set wildmenu
set laststatus=2
set colorcolumn=80,120
set cursorline
set list
set listchars+=eol:↵

" Search
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Keybindings
let g:mapleader = ","
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Files %:h<CR>
nnoremap <leader>t :TagbarOpen fjc<CR>
nnoremap <leader>ag :Ag <C-R><C-W><CR>
vnoremap <leader>s :'<,'>sort<CR>
vnoremap <leader>a :Tabularize /


" Strip whitespace on writing.
autocmd BufWritePre * %s/\s\+$//e

autocmd FileType markdown set foldexpr=NestedMarkdownFolds()

" Coc Testing {{{

" if hidden is not set, TextEdit might fail.
set hidden
set nobackup
set nowritebackup
set updatetime=300      " You will have bad experience for diagnostic messages when it's default 4000.
set shortmess+=c        " don't give |ins-completion-menu| messages.
"set signcolumn=yes      " always show signcolumns

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Jump to next error.
nmap <silent> <leader>e <Plug>(coc-diagnostic-prev)

" Show all diagnostics
nnoremap <silent> <leader>E  :<C-u>CocList diagnostics<cr>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" Show LSP errors in the status line.
function! StatusDiagnostic() abort
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info, 'error', 0)
        call add(msgs, 'E' . info['error'])
    endif
    if get(info, 'warning', 0)
        call add(msgs, 'W' . info['warning'])
    endif
    return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction
" }}}
"
" FZF {{{
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
"
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    setlocal colorcolumn=""
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    setlocal colorcolumn=""
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction
" }}}
"
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
