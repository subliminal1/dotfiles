" Plugins {{{
call plug#begin('~/.cache/vim/plugins')

" Finders
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/scrooloose/nerdtree'

" Completion
if has('node')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" Tags
Plug 'https://github.com/majutsushi/tagbar'

" Linting
Plug 'neomake/neomake'

" GIT
Plug 'https://github.com/zivyangll/git-blame.vim'

" PHP
Plug 'https://github.com/StanAngeloff/php.vim'
Plug 'https://github.com/shawncplus/phpcomplete.vim'

" JavaScript
Plug 'https://github.com/pangloss/vim-javascript'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/cocopon/iceberg.vim/'

call plug#end()
" }}}

" Plugin Configuration {{{
"
let NERDTreeQuitOnOpen=1 
let g:php_sql_query = 1
let g:lightline = { 'colorscheme': 'ayu_mirage' }
let g:gutentags_cache_dir = '~/.cache/vim/ctags'

let g:gutentags_ctags_extra_args = [
    \ '--totals=yes',
    \ '--languages=PHP',
    \ '--fields=+aimlS',
    \ '--PHP-kinds=cdfint',
    \ '--output-format=e-ctags',
\ ]

let g:gutentags_ctags_exclude = [
    \ 'node_modules',
    \ 'vendor',
    \ '.git'
\ ]

call neomake#configure#automake('w')
" }}}


filetype indent plugin on
syntax on

" Theming
set termguicolors
let ayucolor="dark"
colorscheme ayu

" System
set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
set hidden
set noswapfile
set noshowcmd

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
set number
set noruler
set wildmenu                   				
set laststatus=2
set colorcolumn=80,120
set cursorline

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Keybindings 
let g:mapleader = ","
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Files %:h<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarOpen fjc<CR>
nnoremap <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <leader>g :call gitblame#echo()<CR>
map <F12> :e ~/.dotfiles/nvim/init.vim<CR>
map <F5> :EnableFastPHPFolds<CR>
