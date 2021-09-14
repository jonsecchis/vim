augroup FileChecks
    autocmd!
    autocmd BufEnter,FileType * call FType()
augroup END

augroup PostWrite
    autocmd!
    autocmd BufWritePost * call TrimWhitespace()
augroup END

augroup Startup
    autocmd!
    autocmd VimEnter * call Startup() 
augroup END

augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave ?* silent! mkview
    autocmd BufWinEnter ?* silent! loadview
augroup END

augroup ColorSchemeChanges
    autocmd!
    autocmd ColorScheme * call ChangeColors()
augroup END
