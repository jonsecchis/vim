call plug#begin('~/.vim/plugged')

Plug '/opt/homebrew/bin/fzf'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
