nnoremap          r             :redo<CR>
nnoremap          ;w            :<C-u>silent! move-2<CR>==
nnoremap          ;s            :<C-u>silent! move+<CR>==
nnoremap          ;d            :bn<CR>
nnoremap          ;a            :bp<CR>
nnoremap          ,cd           :cd %:p:h<CR>
nnoremap <silent> ;q            :call DelCurBuf()<CR>
nnoremap <silent> <Leader><Esc> :nohlsearch<CR>
map               <F3>          :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
