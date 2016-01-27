" Enable syntax highlighting
filetype plugin indent on
syntax enable

set autoindent
set smartindent
set cindent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" set mouse=a

" reindent, and return to where you where
" http://vim.wikia.com/wiki/Fix_indentation
map <F7> mzgg=G`z

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab



colorscheme slate
" colorscheme adaryn
" colorscheme PaperColor
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

" highlight column 80
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=8
endif

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
" Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'pld-linux/vim-syntax-vcl'
Bundle 'bronson/vim-trailing-whitespace'
