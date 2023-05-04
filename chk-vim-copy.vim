"  Author: chanakasan <chanakasan@gmail.com>
"  Repository: https://github.com/chanakasan/chk-vim
"  Create Date: 2023-05-05
"  License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set noeb
filetype on
filetype plugin on
syntax enable
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme CandyCode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
if has('termguicolors')
  let &t_8f="\e[38;2;%ld;%ld;%ldm"
  let &t_8b="\e[48;2;%ld;%ld;%ldm"
  set termguicolors
end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title
set cmdheight=8
set showcmd
set laststatus=2
set cursorline
set ruler
set whichwrap+=<,>,h,l
set ttimeoutlen=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on
set virtualedit=block,onemore
set number
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set nowrap
set backspace=2
set sidescroll=10
set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:html_indent_inctags = "html,body,head,tbody"
set autoindent
set smartindent
set copyindent
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround  " when at 3 spaces and i hit >>, go to 4, not 5.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set autoread
set autowrite
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enconding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=DejaVuSansMono_Nerd_Font_Mono:h12:cANSI:qDRAFT
set guioptions-=m
set guioptions-=T
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b
"set showtabline=0
"set guicursor=n-v-c:ver5
set guicursor+=a:blinkon0  " Disable all blinking:

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
set pastetoggle=<M-p>
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>
nnoremap <leader>s :source $MYVIMRC<cr>
nnoremap <leader>e :e $MYVIMRC<cr>
noremap <c-s> :w<cr>
nnoremap <cr> :nohl<cr>
nmap <F3> i<C-R>=strftime("%Y-%m-%d %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %I:%M %p")<CR>
nnoremap * *<C-O>:%s///gn<CR> "counts the num of occurences of word under cursor

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Copy :!cat % | clip.exe
command! COpy :Copy
command! SourceFile :source %
command! Mru :bro ol
command! MRu Mru
command! New :enew
command! Bw :bprev | bw#
command! BW :Bw
command! CloseAll :bufdo bd
command! CLoseAll :CloseAll
command! InsertLineNumbers :%!nl -s '. ' -w 2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: Maximize
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32')
  au GUIEnter * simalt ~x
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: AsHTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! AsHtml :!clear; w3m -dump %
command! AsHtmlLess :!clear; w3m -dump % | less
command! ASHtml AsHtml
command! AsHTml AsHtml

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Packs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect() "to load packs in vim < version 8
:packadd ultisnips
