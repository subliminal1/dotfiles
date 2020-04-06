" Plugins {{{
call plug#begin('~/.cache/vim/plugins')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/preservim/nerdtree'
"Plug 'https://github.com/stanangeloff/php.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/2072/PHP-Indenting-for-VIm'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/honza/vim-snippets'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()
" }}}
"
" Plug Settings {{{
let g:tagbar_sort = 0
let g:tagbar_left = 0
let NERDTreeQuitOnOpen=1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_no_default_key_mappings = 1
let g:airline_detect_spell=0
let g:airline_symbols_ascii = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#hunks#enabled = 0
" }}}

" Conditional Settings {{{
if has('nvim')
    set signcolumn=yes:1
endif

if exists('+termguicolors')
    set termguicolors
    let base16colorspace=256
endif
" }}}

" VIM Settings {{{
filetype indent plugin on
syntax on
colorscheme messages
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
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Files %:h<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>ag :Ag <C-R><C-W><CR>
nmap <leader>e :NERDTreeToggle<CR>
vmap <leader>s :'<,'>sort<CR>



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

" }}}

" Autocommands {{{
autocmd BufWritePre * %s/\s\+$//e
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': ''})
" }}}
