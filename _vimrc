set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'surround.vim'
Plugin 'ctrlp.vim'
Plugin 'Solarized'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

let g:solzrized_termcolors=256
let g:solzrized_termtrans=1

syntax enable
set ruler
" set background=dark
colorscheme jellybeans

set noerrorbells visualbell t_vb=

set noundofile
set nobackup
set number
set relativenumber	
set nowrap

set directory=$HOME/.vim/swapfiles//

" Searching
set nohlsearch      " no highlighting while searching
set ignorecase      " case insenstive search
set smartcase       " respect case in search when capitols are used
"set hlsearch       " highlight search matches
set incsearch       " search as characters are entered


"make fuzzy finding work // kinda like Control-P
set path+=**
set wildmenu        " visual autocomplete for command menu

"ignore certain folders
set wildignore+=*/extjs*/*,*/Symphony.Web/skins/*

" make the clipboard work betweeen the apps
set clipboard=unnamed

" tweaks for file browsing
let g:netrw_liststyle=3 	" tree view

let mapleader = " "

" edit vimrc and reload bindings
nnoremap <leader>ev :split $MYVIMRC<cr>     
nnoremap <leader>sv :source $MYVIMRC<cr>

" xml syntax coloring and formatting
nnoremap <leader>x :set filetype=xml<cr>:%s!><!>\r<!g <cr>gg=G

" add window moving to the leader key
map <leader>w <c-w>

" jk is ESCAPE in insert mode
inoremap jk <esc>

" Tabs for most things are 2
set expandtab     " tabs are spaces
set tabstop=2     " number of visual spaces per tab
set shiftwidth=2  "
set softtabstop=2 " number of spaces in tab when editing
" Tabs for C# files are 4
autocmd Filetype cs setlocal et ts=4 sw=4 sts=4
autocmd Filetype javascript setlocal et ts=4 sw=4 sts=4
autocmd Filetype html setlocal et ts=4 sw=4 sts=4

set splitbelow      " preview code window goes to the bottom

"map <leader>t :w<cr>:!dotnet test<cr>
autocmd Filetype rb map <leader>t :w<cr>:Dispatch ruby *test*.rb<cr>

" Make GVim look pretty... ish
set guifont=consolas:h11
if has("gui_running")
  set lines=45
  set columns=100
endif
