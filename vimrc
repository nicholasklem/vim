colorscheme elflord
syntax on
set modeline
set modelines=1
set nocompatible
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 "  " required! 
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!

Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
