" Vim syntax file
" Language: YML2 
" Maintainer: Jon Secchis 
" Latest Revision: 23 March 2022

if exists("b:current_syntax")
  finish
endif

syntax sync fromstart

syn match Key '\v(^\s*[^.]\w[^:]{-}[:])'
syn match MetaKey '\v(^\s*[.]\w[^:]{-}[:])'
syn match Comment '\v(^\s*[#].*$)'

hi Key term=bold ctermfg=32 guifg=#268bd2
hi MetaKey term=bold ctermfg=242 guifg=#586e75
hi def link Comment Comment

let b:current_syntax = "yml"
