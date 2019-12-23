" Plugins {{{
call plug#begin('~/.cache/vim/plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/neomake/neomake'

Plug 'https://github.com/stanangeloff/php.vim'

Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'chriskempson/base16-vim'

call plug#end()
" }}}

call neomake#configure#automake('nrwi', 250)



filetype indent plugin on
syntax on

" Theme
set termguicolors
let g:lightline = { 'colorscheme': 'base16' }
colorscheme base16-eighties

" System
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
"set number
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
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarOpen fjc<CR>
nnoremap <leader>ag :Ag <C-R><C-W><CR>
nnoremap <leader>g :call gitblame#echo()<CR>
nnoremap <C-Space> :call checkbox#ToggleCB()<cr>

vnoremap <leader>s :'<,'>sort<CR>
vnoremap <leader>a :Tabularize /

map <F5> :EnableFastPHPFolds<CR>
map <F12> :e ~/.dotfiles/nvim/init.vim<CR>

function! <SID>StripTrailingWhitespaces()
    let c = getpos(".")
    %s/\s\+$//e
    call setpos(".", c)
endfun

" strip white spaces
autocmd BufWritePre *.sql,*.vim,*.php,*.js,*.ts :call <SID>StripTrailingWhitespaces()
