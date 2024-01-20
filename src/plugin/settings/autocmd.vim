augroup mod_ft_html
  autocmd!
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

augroup mod_ft_qf
  autocmd!
  " Wrap the quickfix window
  autocmd FileType qf setlocal wrap linebreak
augroup END

  
augroup mod_format_options
  autocmd!
  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END