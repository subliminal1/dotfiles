set nocompatible

if filereadable(expand("~/.dotfiles/nvim/local.vim"))
    source ~/.dotfiles/nvim/local.vim
endif


call plug#begin('~/.config/nvim/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'https://github.com/scrooloose/nerdtree'
    let NERDTreeQuitOnOpen=1   

    " Tags
    Plug 'https://github.com/ludovicchabant/vim-gutentags'

    " Completion
    "if has('python3')
    "    Plug 'https://github.com/Shougo/deoplete.nvim'
    "    let g:deoplete#enable_at_startup = 1
    "endif

    " Linting
    " Plug 'neomake/neomake'
    "call neomake#configure#automake('nrwi', 500)

    " Language
    Plug 'https://github.com/StanAngeloff/php.vim'
    Plug 'https://github.com/pangloss/vim-javascript'

    " Interface
    Plug 'https://github.com/itchyny/lightline.vim'
    let g:lightline = { 'colorscheme': 'jellybeans' }

    " Color Schemes
    Plug 'https://github.com/drewtempelmeyer/palenight.vim'
    Plug 'https://github.com/morhetz/gruvbox'
    Plug 'https://github.com/arcticicestudio/nord-vim'
    Plug 'https://github.com/joshdick/onedark.vim'

call plug#end()

syntax on
filetype plugin on
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

set t_Co=256				                    " Set terminal colors.
set termguicolors			    		        " Force better colors.
set clipboard=unnamedplus

set background=dark
set autoindent				                    " Indent new lines to the correct level.
set smartindent
set backspace=start,indent,eol  	            " Backspace over start of insert, autoindent, and line breaks.
set clipboard=unnamedplus		                " Use system clipboard.
set copyindent				                    " Copy the structure of the existing lines indent when autoindenting a new line.
set cursorline				                    " Highlight the screen line of the cursor with CursorLine.
set encoding=utf8			                    " Internal character encoding.
set expandtab				                    " Insert spaces instead of Tabs.
set ignorecase				                    " Searches are case insensitive.
set laststatus=2			                    " Always show the status line.
set noswapfile				                    " Disable swap files.
set nowrap				                        " Do not wrap lines.
set number				                        " Show line numbers.
set ruler				                        " Show column numbers.
set shiftwidth=4			                    " @TODO
set tabstop=4				                    " Number of spaces a <Tab> character represents.
set lazyredraw                                  " @TODO
set listchars+=eol:$
set nolist
set noswapfile                                  " Disable file backups.


let mapleader = ","
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Files %:h<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
vnoremap <leader>g :'<,'>s/\n/\r\r/<CR>

"let $FZF_DEFAULT_OPTS='--layout=reverse'
"let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = &lines - 5
  let width = float2nr(&columns - (&columns * 2 / 5))
  let col = float2nr((&columns - width) / 2)


  let opts = {
        \ 'relative': 'editor',
        \ 'row': 1,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

highlight NormalFloat cterm=NONE ctermfg=14 ctermbg=0 gui=NONE guifg=#93a1a1 guibg=#002931
