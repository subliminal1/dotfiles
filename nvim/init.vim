call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/neomake/neomake'
"Plug 'https://github.com/vim-syntastic/syntastic'
call plug#end()

filetype plugin indent on

set t_Co=256
syntax enable
set background=dark
"let g:gruvbox_contrast_dark = 'soft'
colors onehalfdark

set number ruler
set autoindent smartindent copyindent
set tabstop=4 shiftwidth=4 smarttab expandtab

set laststatus=2
set showcmd
set cursorline
set ignorecase
set colorcolumn=80

set lazyredraw

" keybindings
let mapleader = ','
map <leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>


" UltiSnips
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:snips_author = 'Matthew Myers <mmyers@welf.net>'
let g:deoplete#enable_at_startup = 1

inoremap <Tab> <c-r>=UltiSnips#ExpandSnippet()<cr>

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

nnoremap <leader>e :lfirst<CR>
