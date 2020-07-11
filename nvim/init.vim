" Plugins {{{
call plug#begin('~/.cache/vim/plugins')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/majutsushi/tagbar'

Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/kkoomen/vim-doge'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/gabrielelana/vim-markdown'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/godlygeek/tabular'

Plug 'https://github.com/chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ghifarit53/tokyonight.vim'
Plug 'https://github.com/joshdick/onedark.vim'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()
" }}}

" Plugin Settings {{{
"let g:loaded_matchparen = 0
let g:tagbar_left = 1
let g:tagbar_width = 40
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1
let g:tagbar_sort = 0
let g:tagbar_show_visibility = 1
let g:tagbar_show_linenumbers = 1

let g:markdown_enable_folding = 1
let g:markdown_include_jekyll_support = 0
let g:markdown_enable_mappings = 0
let g:markdown_enable_conceal = 1

let g:airline_theme = 'onedark'
let g:airline_symbols_ascii = 1
let g:airline_detect_spell = 0
let g:airline_highlighting_cache = 1
let g:airline_extensions = ['coc', 'branch']
" }}}

" Conditional Settings {{{
if has('nvim')
    set signcolumn=no
    set termguicolors
    set conceallevel=2
endif
" }}}

" VIM Settings {{{
filetype indent plugin on
syntax on
set completeopt-=longest,menuone
set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
set hidden
set noswapfile
set noshowcmd
set noshowmode
set spell
set nowrap
set expandtab smarttab
set shiftround
set relativenumber
set number
set numberwidth=2
set noruler
set wildmenu
set wildmode=longest:full,full
set laststatus=2
set cursorline
set list
set ignorecase smartcase
set incsearch nohlsearch
set autoindent smartindent copyindent
set tabstop=4 softtabstop=4 shiftwidth=4
set foldmethod=syntax foldlevelstart=0 foldenable
set splitright
set diffopt+=vertical
" }}}

" CoC Settings {{{
set cmdheight=1     " experimental
set updatetime=300  " experimental
set shortmess+=c    " experimental

" CoC bindings
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<CR>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" }}}

" Keybindings {{{
let g:mapleader = ","
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>r :History<CR>
nmap <leader>c :Files %:h<CR>
nmap <leader>t :TagbarOpenAutoClose<CR>
nmap <leader>ag :Ag <C-R><C-W><CR>
vmap <leader>s :'<,'>sort<CR>
vmap <leader>a :Tab /

" }}}

" Auto commands {{{

function! StripTrailingWhitespace()
    " Don't strip on these file types.
    if &ft =~ 'vim'
        return
    endif
    %s/\s\+$//e
endfunction

autocmd BufWritePre * call StripTrailingWhitespace()
autocmd FileType php setlocal autoindent

" }}}

" Theme {{{

set fillchars=fold:\ 
set listchars+=eol:↵
let g:onedark_terminal_italics=1
colorscheme onedark

"function! s:base16_customize() abort
"    call Base16hi("LineNr", g:base16_gui03, g:base16_gui00, "", "", "", "")
"    call Base16hi("CursorLine", "", g:base16_gui01, "", "", "", "")
"    call Base16hi("CursorLineNr", g:base16_gui03, g:base16_gui00, "", "", "", "")
"    call Base16hi("SignColumn", g:base16_gui03, g:base16_gui00, "", "", "", "")
"    call Base16hi("Comment", g:base16_gui04, g:base16_gui00, "", "", "italic", "")
"    call Base16hi("Folded", g:base16_gui03, "", "", "", "italic", "")
"    call Base16hi("SpellBad", "", "", "", "", "undercurl", "")
"    call Base16hi("VertSplit", g:base16_gui01, g:base16_gui00, "", "", "", "")
"    call Base16hi("StatusLine", g:base16_gui02, g:base16_gui02, "", "", "", "")
"    call Base16hi("StatusLineNC", "", g:base16_gui02, "", "", "", "")
"endfunction!
"
"au User AirlineAfterInit,AirlineAfterTheme call s:base16_customize()
"
"augroup on_change_colorschema
"  autocmd!
"  autocmd ColorScheme * call s:base16_customize()
"augroup END

" }}}
