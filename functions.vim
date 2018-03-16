fun! Startup()
    if has("gui_running")
        :Vex ~/repos 
    endif
endfun

fun! FType()

    let shortindent = ['javascript', 'yaml', 'json']

    if (&ft == 'netrw')
        set nobl
        vertical resize 30
    endif

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
