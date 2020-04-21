" Plugins {{{
call plug#begin('~/.cache/vim/plugins')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/chriskempson/base16-vim'
Plug 'https://github.com/Yggdroot/indentLine'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

"Plug 'https://github.com/ryanoasis/vim-devicons'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'https://github.com/honza/vim-snippets'
"Plug 'https://github.com/2072/PHP-Indenting-for-VIm'
"Plug 'https://github.com/stanangeloff/php.vim'
"Plug 'https://github.com/preservim/nerdtree'

call plug#end()
" }}}

" Plugin Settings {{{
let g:tagbar_sort = 0
let g:tagbar_left = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:airline_detect_spell = 0
let g:airline_symbols_ascii = 1
let g:airline#extensions#hunks#enabled = 0
" }}}

" Conditional Settings {{{
if has('nvim')
    set signcolumn=yes:1
    set termguicolors
endif
" }}}

" VIM Settings {{{
filetype indent plugin on
syntax on
set completeopt-=preview
set encoding=utf-8
set clipboard=unnamedplus
set backspace=indent,eol,start
set hidden
set noswapfile
set noshowcmd
set noshowmode
set spell
set nowrap
set expandtab
set shiftround
set relativenumber
set noruler
set wildmenu
set laststatus=2
set cursorline
set list
set ignorecase smartcase
set incsearch nohlsearch
set autoindent smartindent copyindent
set tabstop=4 softtabstop=4 shiftwidth=4
set foldmethod=syntax foldlevelstart=0 foldenable
" }}}

" Coc Settings {{{

set cmdheight=1 " experimental
set updatetime=300 " experimental
set shortmess+=c

" }}}

" Keybindings {{{
let g:mapleader = ","
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Files %:h<CR>
nmap <leader>t :TagbarOpen fjc<CR>
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

" Auto commands {{{
function! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'vim'
        return
    endif
    %s/\s\+$//e
endfunction

" Strip trailing white spaces for non vim files.
autocmd BufWritePre * call StripTrailingWhitespace()

" Fix PHP auto indenting.  This does not work when in ftplugin/php.vim.
autocmd FileType php setlocal autoindent

autocmd FileType markdown setlocal formatoptions+=o
" }}}

" Theme {{{
function! s:base16_customize() abort
    call Base16hi("LineNr", g:base16_gui03, g:base16_gui00, "", "", "", "")
    call Base16hi("CursorLine", "", g:base16_gui01, "", "", "", "")
    call Base16hi("CursorLineNr", g:base16_gui03, g:base16_gui00, "", "", "", "")
    call Base16hi("SignColumn", g:base16_gui03, g:base16_gui00, "", "", "", "")
    call Base16hi("VertSplit", g:base16_gui03, g:base16_gui00, "", "", "", "")
    call Base16hi("Comment", g:base16_gui04, "", "", "", "italic", "")
    call Base16hi("Folded", g:base16_gui03, "", "", "", "italic", "")
    call Base16hi("SpellBad", "", "", "", "", "undercurl", "")
endfunction!

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END

set fillchars=fold:\ 
set listchars+=eol:↵
let g:airline_theme = 'base16'
colorscheme base16-eighties
" }}}
