" Plugins {{{
call plug#begin('~/.cache/vim/plugins')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/stanangeloff/php.vim'
Plug 'https://github.com/2072/PHP-Indenting-for-VIm'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/godlygeek/tabular'
Plug 'itchyny/lightline.vim'

if has('nvim')
    Plug 'https://github.com/neomake/neomake'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
call plug#end()
" }}}
"
" Plug Settings {{{
let g:tagbar_sort = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 2
let g:vim_markdown_no_default_key_mappings = 1
let g:lightline = { 'colorscheme': 'Tomorrow_Night' }
" }}}

" Conditional Settings {{{
if has('nvim')
    call neomake#configure#automake('rw')
    set signcolumn=yes:1
endif

if exists('+termguicolors')
    set termguicolors
endif
" }}}

" VIM Settings {{{
filetype indent plugin on
syntax on
colorscheme messages
set t_Co=256
set completeopt-=preview
set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
set hidden
set noswapfile
set noshowcmd
set noshowmode
set spell
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set textwidth=80
set nowrap
set autoindent
set smartindent
set copyindent
set relativenumber
set noruler
set wildmenu
set laststatus=2
set colorcolumn=80,120
set cursorline
set list
set listchars+=eol:↵
set ignorecase
set smartcase
set incsearch
set nohlsearch
" }}}

" Keybindings {{{
let g:mapleader = ","
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Files %:h<CR>
nnoremap <leader>t :TagbarOpen fjc<CR>
nnoremap <leader>ag :Ag <C-R><C-W><CR>
vnoremap <leader>s :'<,'>sort<CR>
vnoremap <leader>a :Tabularize /
" }}}

" Autocommands {{{
autocmd BufWritePre * %s/\s\+$//e
" }}}
