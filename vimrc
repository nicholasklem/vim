" Enable syntax highlighting
syntax enable

set autoindent
set smartindent
set cindent

colorscheme slate
" colorscheme adaryn
set background=dark

set modeline
set modelines=1

set showcmd

" just in case. redundant.
set nocompatible

" search case insensitive
set ignorecase

" incremental search
set incsearch

" Highlight search results
set hlsearch
highlight Search ctermfg=black ctermbg=green

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set laststatus=2
" " Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!
" end of vundle, start plugins

Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'tomtom/tlib_vim.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
