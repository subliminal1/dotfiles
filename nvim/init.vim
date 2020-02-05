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
Plug 'https://github.com/neomake/neomake'
call plug#end()

filetype indent plugin on
syntax on

let &t_ut=''
let g:tagbar_sort = 0
let g:lightline = { 'colorscheme': 'jellybeans' }
let g:neomake_open_list = 2
let base16colorspace=256
call neomake#configure#automake('rw')


colorscheme base16-tomorrow-night-eighties
set signcolumn=yes
set completeopt-=preview
set termguicolors
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

let g:mapleader = ","
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Files %:h<CR>
nnoremap <leader>t :TagbarOpen fjc<CR>
nnoremap <leader>ag :Ag <C-R><C-W><CR>
vnoremap <leader>s :'<,'>sort<CR>
vnoremap <leader>a :Tabularize /

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
