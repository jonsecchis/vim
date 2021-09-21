" Vim syntax file
" Language: Monolog 
" Maintainer: Jon Secchis 
" Latest Revision: 20 September 2021

if exists("b:current_syntax")
  finish
endif

syntax sync fromstart

syn match DataFragment '\v(%^|^\n)(.+\n)*.+\s{2}(\w+(,\s\w+)*[:,.])\ze(\n\n|\n*%$)' contains=DataExtension
syn match DataExtension '\v\zs\s{2}(\w+(,\s\w+)*)[:,.]\n$' contained display
syn match MetaFragment '\v(%^|^\n)(.+\n)*.+\s{2}(\w+(,\s\w+)*)\ze(\n\n|\n*%$)' contains=MetaExtension
syn match MetaExtension '\v\zs\s{2}(\w+(,\s\w+)*)\n$' contained display

hi def link MetaFragment Comment
hi DataExtension term=bold ctermfg=27 guifg=#0070ff
hi MetaExtension term=bold ctermfg=41 guifg=#00d75f

let b:current_syntax = "mono"
