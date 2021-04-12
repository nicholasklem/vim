" Enable syntax highlighting
filetype plugin indent on
syntax enable

"set autoindent
set smartindent
" set cindent
"filetype indent on
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" set mouse=a

" reindent, and return to where you where
" http://vim.wikia.com/wiki/Fix_indentation
map <F7> mzgg=G`z

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

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
" set ignorecase

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
" end of vundle, start plugins

" Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
Bundle 'godlygeek/tabular'
" Bundle 'honza/vim-snippets'
" Bundle 'tomtom/tlib_vim'
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'ervandew/supertab'
" Bundle 'garbas/vim-snipmate'
Bundle 'smerrill/vcl-vim-plugin'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'bracki/vim-prometheus'
Bundle 'hashivim/vim-terraform'
Bundle 'pedrohdz/vim-yaml-folds'
Bundle 'fatih/vim-go'
"Bundle 'arnar/vim-matchopen'

" https://vi.stackexchange.com/a/24396
"Bundle 'Yggdroot/indentLine'
"let g:vim_json_syntax_conceal = 0
"let g:vim_markdown_conceal = 0
"let g:vim_markdown_conceal_code_blocks = 0

" Bundle 'dense-analysis/ale'


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_sign_error = '✘'
"let g:ale_sign_warning = '⚠'
"let g:ale_lint_on_text_changed = 'never'

filetype plugin indent on     " required!

set undofile                 "turn on the feature
set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
