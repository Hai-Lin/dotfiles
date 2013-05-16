set nocompatible
syntax on "color snytax
set ai         " auto indent
set cin shiftwidth=4  "c/c++ indent
set smartindent 
set tabstop=2 "4 space for tab
filetype plugin indent on 
 autocmd BufReadPost * 
   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
   \   exe "normal! g'\"" |
   \ endif

filetype on
set incsearch
set noexpandtab
set paste
set ruler "show line number in the lower right corner

