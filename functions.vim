fun! Startup()
    if has("gui_running")
        :Vex ~/repos 
    endif
endfun

fun! ChangeColors()
    let l:bg = GetHiAttr('Normal', 'bg')
    let g:tabbg = GetHiAttr('TabLine', 'bg')
    let g:tabfg = GetHiAttr('TabLine', 'fg')
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
    if (g:theme == 'light')
        let g:theme = 'dark'
        colorscheme solarized8_dark_flat
    else
        let g:theme = 'light'
        colorscheme solarized8_light_flat
    endif
endfun

fun! GetHiAttr(hi, attr)
    return synIDattr(synIDtrans(hlID(a:hi)), a:attr)
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
