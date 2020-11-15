" vim: foldmethod=marker

" VIM Settings {{{

if has('autocmd') 
    filetype indent plugin on
    syntax enable
end

if has('nvim')
    set signcolumn=number " Put special symbols INTO the ruler.
    set termguicolors     " Use better colors.
    set conceallevel=2
endif

set encoding=utf-8                                 " Set encoding.
set nobackup nowritebackup                         " Don't write backup files.
set noswapfile                                     " Don't keep swapfiles around.
set hidden                                         " Keep buffers open in the background.
set backspace=indent,eol,start                     " Fix backspace.
set noshowcmd                                      " Don't show commands in the status line.
set number numberwidth=2 relativenumber            " Show line numbers.
set nospell                                        " Disable spell checking, I wish I could get this to work better.
set equalalways splitright splitbelow              " Split configuration.
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 " Tab configuration>
set wildmenu wildmode=longest:full,full            " Completion.
set nowrap                                         " Don't wrap text.
set cursorline                                     " Highlight current line.
set autoindent smartindent copyindent              " Auto indenting>
set laststatus=2                                   " Always show the status line.
set foldenable foldmethod=indent                   " Folding.
set foldlevel=0 foldlevelstart=0                   " Folding 2.
set incsearch                                      " Show matches while typing.
set clipboard+=unnamedplus                         " Use the system clipboard.
set list listchars+=eol:↵                          " Show special characters on the screen.
set updatetime=300                                 " Lower timeouts.
set shortmess+=c                                   " Better completion messages.
set fillchars=fold:\ ,stl:\                        " Don't fill folds with periods.
set noruler                                        " Hide columns & rows in the status line.
set ignorecase                                     " Easier searching
set nohlsearch                                     " Do not highlight searches

" }}}

" Plugins {{{

call plug#begin('~/.cache/vim/plugins')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/sainnhe/gruvbox-material'
"Plug 'https://github.com/nelsyeung/twig.vim'
Plug 'https://github.com/sainnhe/edge'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/sheerun/vim-polyglot'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/antoinemadec/coc-fzf'
endif
call plug#end()

let loaded_matchparen = 1
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.8 } }
let g:fzf_preview_window = ''
let g:markdown_folding = 1
let g:markdown_syntax_conceal = 1
let $FZF_DEFAULT_OPTS = '--reverse'
let $FZF_DEFAULT_COMMAND = 'ag -l --ignore node_modules -g ""'

" }}}

" CoC Settings {{{

let g:coc_fzf_preview = ""
let g:coc_fzf_opts = []
"nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>

" }}}

" Keybindings {{{

let g:mapleader = "\<Space>"
nmap <leader>f :Files<CR>
nmap <leader>c :Files %:h<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
vmap <leader>a :Tab /
nmap <leader>e :<C-u>CocFzfList diagnostics --current-buf<CR>
nmap <leader>o :<C-u>CocFzfList outline<CR>
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"inoremap <silent><expr> <C-k> coc#refresh()

" }}}

" Auto Commands {{{

function! StripTrailingWhitespace()
    " Don't strip on these file types.
    if &ft =~ 'vim'
        return
    endif
    %s/\s\+$//e
endfunction

autocmd BufWritePre * call StripTrailingWhitespace()
autocmd FileType php setlocal autoindent " PHP syntax files are broken

" }}}

" Theme {{{

let g:gruvbox_material_background = 'hard'
let g:sonokai_style = 'shusia'
set background=dark
"colorscheme gruvbox-material
colorscheme sonokai

" }}}
