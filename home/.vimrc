set nocompatible
syntax on "color snytax
set ai         " auto indent
set cin shiftwidth=4  "c/c++ indent
set smartindent 
set ts=4 sts=4 sw=4 noexpandtab
filetype plugin indent on 
autocmd BufReadPost * 
						\ if line("'\"") > 0 && line ("'\"") <= line("$") |
						\   exe "normal! g'\"" |
						\ endif

filetype on
set incsearch
set paste
set ruler "show line number in the lower right corner

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'

