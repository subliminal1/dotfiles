set nocompatible

call plug#begin('./plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    Plug 'scrooloose/syntastic'
    Plug 'https://github.com/StanAngeloff/php.vim'

    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
    endif

    let g:deoplete#enable_at_startup = 1


    Plug 'https://github.com/scrooloose/nerdtree'
    let NERDTreeQuitOnOpen=1   

    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'vim-airline/vim-airline'

call plug#end()

syntax on
filetype plugin on
colorscheme dracula

set t_Co=256				                    " Set terminal colors.
set termguicolors			    		        " Force better colors.
set clipboard=unnamedplus

set background=dark
set autoindent				                    " Indent new lines to the correct level.
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

let mapleader = ','
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
vnoremap <leader>g :'<,'>s/\n/\r\r/<CR>
