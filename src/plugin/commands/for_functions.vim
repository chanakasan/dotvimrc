
command! -nargs=* SetTabs call SetTabs(<f-args>)
command! -nargs=* Stab call Stab()
command! SummarizeTabs call SummarizeTabs()

";; groups
command! Trim :call <SID>StripTrailingWhitespace()
command! TRim Trim

command! -nargs=* EditCustomizerPlugin call EditCustomizerPlugin(<f-args>)
command! Edit EditCustomizerPlugin
command! EDit Edit