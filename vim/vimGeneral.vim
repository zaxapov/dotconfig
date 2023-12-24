" ---------- GENERAL SETTINGS  ----------
" Each time a new or existing file is edited, Vim will try
" to recognize the type of the file and set the 'filetype'
" option. This will trigger the FileType event, which can be
" used to set the syntax highlighting, set options, etc.
filetype plugin indent on
" Auto-trigger syntax highlighting for NASM
autocmd BufNew,BufRead *.asm set filetype=nasm

set langmenu=en_US.UTF-8
language messages en_US.UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,mac
set nocompatible
set noswapfile " prevent vim from creating .swp files

set autochdir " change working directory to open buffer
set autoread  " auomatically read files modified elsewhere

set confirm   " prompt confirmation dialogs (better quitting)
set hidden    " allow `hiding` current buffer to open another over it

set wildmenu " cmd line completion
set wildmode=list:full,full " cmd line completion style

" GVIM SETTINGS
" -----------------------------------------------------------------------------
set guifont=Input_Mono:h14 " set font for GVim
set guioptions=c  " disable popup dialog windows
set guioptions-=r " disable rigt scrollbar
set guioptions-=l " disable left scrollbar
set guioptions-=b " disable bottom scrollbar

" TEXT EDITING SETTINGS
" -----------------------------------------------------------------------------
syntax on     " colorful words
set bg=dark
colors wildcharm
set rnu nu    " relative+absolute line numbers
set showmatch " highlight matching brace

set splitbelow splitright       " sane splitting
set backspace=indent,eol,nostop " backspace behaviour

set mouse=a " enable mouse in vim

" set colorcolumn=80 " draw a line at X column
set textwidth=80   " set textwidth to X symbools per line

" virtual editing means that the cursor can be positioned
" where there is no actual character.  This can be halfway
" into a tab or beyond the end of the line.  useful for
" selecting a rectangle in visual mode and editing a table.
set virtualedit=all

set breakindent       " continue indentation of wrapped lines
set wrap linebreak    " wrap lines + wrap lines at word (not symbol)
set display+=lastline " always try to show a paragraph's last line

" SEARCH OPTIONS
" -----------------------------------------------------------------------------
" Search mappings are defined in ~/.vim/vimMappings.vim
set hlsearch   " highlight all search results
set smartcase  " enable smart-case search
set ignorecase " always case-insensitive
set incsearch  " searches for strings incrementally

" IDENTATION OPTIONS
" -----------------------------------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab " use spaces instead of tabs

set smartindent " enable smart-indent
set autoindent  " auto-indent new lines
set smarttab    " enable smart-tabs

" DISABLE VISUALBELL
" -----------------------------------------------------------------------------
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" CUSTOM STATUSLINE
" -----------------------------------------------------------------------------
set laststatus=2 " statusline is enabled all the time
set statusline=
set statusline+=\ %f
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=\ \[%Y\]
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c\ 

" VIM UNDO DIRECTORY
" -----------------------------------------------------------------------------
set undolevels=1000 " Number of undo levels

if !isdirectory($HOME."/.vim-undo-dir")
    call mkdir($HOME."/.vim-undo-dir", "", 0700)
endif
set undodir=~/.vim-undo-dir
set undofile
