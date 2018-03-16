fun! Startup()
    if has("gui_running")
        :Vex ~/repos 
    endif
endfun

fun! ChangeColors()
    let l:bg = GetBG()
    if has("gui_running")
        hi EndOfBuffer guifg=bg guibg=bg
    else
        hi EndOfBuffer ctermbg=bg ctermfg=bg 
    endif
endfun

fun! FType()
    if (&ft == 'netrw')
        set nobl
        setlocal statusline=\ %{GetCurDir()}
        vertical resize 30
    endif

    let shortindent = ['javascript', 'yaml', 'json']
    if index(shortindent, &ft) >= 0
        setlocal ts=2 sts=2 sw=2 expandtab
    endif
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    let notrim = ['vim', 'yaml']

    %s/\($\n\s*\)\+\%$//e

    if index(notrim, &ft) < 0
        %s/\s\+$//e
    endif

    call winrestview(l:save)
endfun

fun! ToggleColors()
    if (&background == 'light')
       colorscheme solarized8_dark_flat
       set background=dark 
    else
       colorscheme solarized8_light_flat
       set background=light
    endif
endfun

fun! GetBG()
    return synIDattr(synIDtrans(hlID('Normal')), 'bg')
endfun
    

fun! GetCurDir()
    return expand('%:p:h:t')
endfun

fun! DelCurBuf()
    try
        bn | bw!#
    catch /517/
        enew | bw! #
    endtry
endfunc
