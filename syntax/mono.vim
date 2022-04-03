" Vim syntax file
" Language: Monolog 
" Maintainer: Jon Secchis 
" Latest Revision: 20 September 2021

if exists("b:current_syntax")
  finish
endif

syntax sync fromstart

let data_type = '[*#]*(\w+(\s\w+)*(,\s\w+(\s\w+)*)*[…,;.!:])'
let meta_type = '[*#]*(\w+(\s\w+)*(,\s\w+(\s\w+)*)*)'

exe 'syn match DataFragment /' . '\v(%^|^\n)(.+\n)*.+\s{2}' . data_type . '\ze(\n\n|\n*%$)' . '/ contains=DataExtension'
exe 'syn match DataExtension /' . '\v\zs\s{2}' . data_type . '\n$' . '/ contained display'
exe 'syn match MetaFragment /' . '\v(%^|^\n)(.+\n)*.+\s{2}' . meta_type . '\ze(\n\n|\n*%$)' . '/ contains=MetaExtension'
exe 'syn match MetaExtension /' . '\v\zs\s{2}' . meta_type . '\n$' . '/ contained display'

hi def link MetaFragment Comment
hi DataExtension term=bold ctermfg=27 guifg=#0070ff
hi MetaExtension term=bold ctermfg=41 guifg=#00d75f

let b:current_syntax = "mono"
