nnoremap          r             :redo<CR>
nnoremap          .w            :<C-u>silent! move-2<CR>==
nnoremap          .s            :<C-u>silent! move+<CR>==
nnoremap          ,x            :call ToggleColors()<CR>
nnoremap          ,cd           :cd %:p:h<CR>:pwd<CR>
nnoremap <silent> .q            :call DelCurBuf()<CR>
nnoremap          .d            :bn<CR>
nnoremap          .a            :bp<CR>
nnoremap          ,=            :wincmd =<CR>
nnoremap          ,o            :wincmd o<CR>
nnoremap          ,c            :wincmd c<CR>
nnoremap          ,d            :wincmd l<CR>
nnoremap          ,a            :wincmd h<CR>
nnoremap          ,w            :wincmd k<CR>
nnoremap          ,s            :wincmd j<CR>
nnoremap <silent> <Leader><Esc> :nohlsearch<CR>
nnoremap <silent> <Leader>F     :Files /Users/jon/<CR>
nnoremap <silent> <Leader>f     :Files %:p:h<CR>
nnoremap <silent> <Leader>b     :Buffers<CR>
nnoremap <silent> <Leader>E     :enew<CR>:Ex /Users/jon/<CR>:set buflisted<CR>
nnoremap <silent> <Leader>e     :cd %:p:h<CR>:enew<CR>:Ex .<CR>:set buflisted<CR>
nnoremap          <Leader>l     /\c
nnoremap          <Leader>L     /\C
nnoremap         <F10>          :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
                                \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
                                \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
