" Plugins {{{
call plug#begin('~/.cache/vim/plugins')

" System
Plug 'https://github.com/godlygeek/tabular'

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
Plug 'https://github.com/stephpy/vim-php-cs-fixer'

" JavaScript
Plug 'https://github.com/pangloss/vim-javascript'

Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/plasticboy/vim-markdown'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'chriskempson/base16-vim'


call plug#end()
" }}}

" Plugin Configuration {{{
call neomake#configure#automake('w')
let NERDTreeQuitOnOpen=1
let g:php_sql_query = 1
let g:polyglot_disabled = ['md', 'markdown']
let g:markdown_fenced_languages = ['html', 'css', 'scss', 'sql', 'javascript', 'php']
let g:vim_markdown_folding_disabled = 1
let g:php_cs_fixer_path = "~/.dotfiles/bin/phpcs"
" }}}


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
autocmd BufWritePre *.sql,*.vim,*.php,*.javascript :call <SID>StripTrailingWhitespaces()



set updatetime=300

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
