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
" Whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set tabstop=2
set softtabstop=2

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
set incsearch
set hlsearch
set ignorecase smartcase "searches case-sensitive only if they contain uppercase letters

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set noswapfile
" set autoread
" set autowrite
" set confirm

set undofile
set backup
set writebackup
set backupdir=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp " Don't clutter my dirs up with swp and tmp files
set directory=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enconding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
"set encoding=utf-8
"scriptencoding utf-8
"setglobal fileencoding=utf-8


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
" Splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright
set winminheight=0
set winwidth=79
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap _ :sp<cr>
nnoremap <bar> :vsp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
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
" Mod: DropDown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! ListMonths()
  let list = ['January', 'February', 'March',
   \ 'April', 'May', 'June', 'July', 'August', 'September',
   \ 'October', 'November', 'December']
  call complete(col('.'), list)
  return ''
endfunc
inoremap <c-y>1 <C-R>=ListMonths()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: Fail-safe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Q :q
command! Qall :qall
command! QA :qall
command! W :w
command! WQ :wq
command! Wq :wq

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-t> :tabnew<cr>
nnoremap <a-right> :tabnext<cr>
nnoremap <a-left> :tabprevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: Dictionary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set dictionary+=/home/cs/.vim/dict/words
set complete+=k

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mod: DuplicateFile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! DuplicateFile()
  let old_name = expand('%')
  if old_name != ''
    let new_name = input('Duplicate file: ', expand('%'), 'file')
  endif

  if old_name != '' && new_name != '' && new_name !=# old_name
    exec ':saveas ' . new_name
    redraw!
  endif
endfunction
command! Dup :call DuplicateFile()
command! DUp Dup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Packs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect() "to load packs in vim < version 8
:packadd ultisnips
