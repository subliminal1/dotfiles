" vim: foldmethod=marker foldmarker={{{,}}} foldlevel=0

" Plugins {{{
call plug#begin('~/.cache/vim/plugins')

Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/nelsyeung/twig.vim'
Plug 'vimwiki/vimwiki'


Plug 'https://github.com/sainnhe/edge'


if has('nvim')
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'https://github.com/nvim-treesitter/playground'
    Plug 'neovim/nvim-lspconfig'

    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'https://github.com/nvim-lua/completion-nvim'
    Plug 'https://github.com/steelsojka/completion-buffers'
endif


call plug#end()
" }}}
" Settings {{{

if has('nvim')
    set termguicolors     " Use better colors.
    set conceallevel=2
    set signcolumn=number " Put special symbols INTO the ruler.
endif

set encoding=utf-8                                 " Set encoding
set nobackup nowritebackup                         " Don't write backup files
set noswapfile                                     " Don't keep swapfiles around
set hidden                                         " Keep buffers open in the background
set backspace=indent,eol,start                     " Fix backspace
set noshowcmd                                      " Don't show commands in the status line
set number numberwidth=2 relativenumber            " Show line numbers
set nospell                                        " Disable spell checking, I wish I could get this to work better
set equalalways splitright splitbelow              " Split configuration
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 " Tab configuration
set wildmenu wildmode=longest:full,full            " Completion
set nowrap                                         " Don't wrap text
set cursorline                                     " Highlight current line
set autoindent smartindent copyindent              " Auto indenting
set laststatus=2                                   " Always show the status line
set incsearch                                      " Show matches while typing
set clipboard+=unnamedplus                         " Use the system clipboard
set list listchars+=eol:↵                          " Show special characters on the screen
set shortmess+=c                                   " Better completion messages
set fillchars=fold:\ ,stl:\                        " Don't fill folds with periods
set noruler                                        " Hide columns & rows in the status line
set noignorecase                                   " Strict searching
set nohlsearch                                     " Do not highlight searches
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set background=dark
set updatetime=3

" }}}


lua require('init')

let g:loaded_matchparen = 1
let g:vimwiki_folding = "expr"

colorscheme edge
