so ~/.vim/plugs.vim
so ~/.vim/functions.vim
so ~/.vim/remaps.vim
so ~/.vim/autocmds.vim

let g:theme = 'dark'
colorscheme solarized8_dark_flat

filetype plugin indent on
syntax on

let mapleader=" "
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_browse_split = 0
let g:netrw_altv = 0

set backupcopy=yes
set noswapfile
set shortmess=I
set fileencoding=utf-8
set hidden
set statusline=\ %F%m%=@%l.%c
set autochdir
set cursorline
set ttyfast
set ls=2
set noeb vb t_vb=
set colorcolumn=119
set number
set history=100
set visualbell
set fillchars+=vert:\
set directory=~/.vim/swap//
set linespace=2
set showmatch
set matchpairs+=<:>
set matchpairs+=':'
set matchpairs+=":"
set hlsearch
set expandtab
set smartindent
set autoindent
set nowrap
set fillchars+=vert:\ 
set tabstop=2
set softtabstop=2
set shiftwidth=2

hi def link PmenuSel TabLine
