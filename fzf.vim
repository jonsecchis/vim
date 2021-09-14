let $FZF_DEFAULT_OPTS = "--margin=10%,0,1%,1% --no-bold --marker='◆ ' --pointer=▶"

" Floating window
" let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.3, 'yoffset': 1, 'border': 'top' } }

" Split window
let g:fzf_layout = { 'down': '30%' }

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:fzf_preview_window = []

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'bg+':     ['bg', 'Normal'],
  \ 'hl':      ['fg', 'TabLineSel'],
  \ 'hl+':     ['fg', 'TabLineSel'],
  \ 'info':    ['fg', 'Statement'],
  \ 'border':  ['bg', 'Normal'],
  \ 'prompt':  ['fg', 'Function'],
  \ 'pointer': ['fg', 'Function'],
  \ 'marker':  ['fg', 'Statement'],
  \ 'spinner': ['fg', 'Function'],
  \ 'header':  ['fg', 'Comment'] }
