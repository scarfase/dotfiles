call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

""Settins
set nocompatible
set noswapfile
set nobackup
set autoread
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set encoding=UTF-8

""Color
syntax on
set t_Co=256
colorscheme gruvbox
set background=dark
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h14

""Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set wildmenu

""Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'

map <C-n> :NERDTreeToggle<CR>
