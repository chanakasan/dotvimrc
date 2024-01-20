command! Trim :call <SID>StripTrailingWhitespace()
command! TRim Trim

" #> Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()

command! SummarizeTabs call SummarizeTabs()

inoremap <c-y>1 <C-R>=ListMonths()<CR>