"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: DropDown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! ListMonths()
  let list = ['January', 'February', 'March',
   \ 'April', 'May', 'June', 'July', 'August', 'September',
   \ 'October', 'November', 'December']
  call complete(col('.'), list)
  return ''
endfunc



