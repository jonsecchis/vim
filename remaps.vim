nnoremap          r             :redo<CR>
nnoremap          .w            :<C-u>silent! move-2<CR>==
nnoremap          .s            :<C-u>silent! move+<CR>==
nnoremap          cc            :call ToggleColors()<CR>
nnoremap          cd            :cd %:p:h<CR>
nnoremap <silent> ;q            :call DelCurBuf()<CR>
nnoremap          ;d            :bn<CR>
nnoremap          ;a            :bp<CR>
nnoremap          ,=            :wincmd =<CR>
nnoremap          ,o            :wincmd o<CR>
nnoremap          ,c            :wincmd c<CR>
nnoremap          ,d            :wincmd l<CR>
nnoremap          ,a            :wincmd h<CR>
nnoremap          ,w            :wincmd k<CR>
nnoremap          ,s            :wincmd j<CR>
nnoremap <silent> <Leader><Esc> :nohlsearch<CR>
