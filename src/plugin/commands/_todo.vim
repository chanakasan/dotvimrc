command! -nargs=* SetTabs call SetTabs(<f-args>)
command! Trim :call <SID>StripTrailingWhitespace()
command! TRim Trim

" #> Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()

command! SummarizeTabs call SummarizeTabs()

command! -nargs=* EditCustomizerPlugin call EditCustomizerPlugin(<f-args>)
command! Edit EditCustomizerPlugin
command! EDit Edit