" VIM-PLUG PLUGIN MANAGER SETUP
" -----------------------------------------------------------------------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'https://github.com/kkga/vim-envy'                  " Light theme (Envy)
Plug 'https://github.com/sk1418/blockit'                 " Easy text blocks
Plug 'https://github.com/tpope/vim-surround'             " Easy parenthesis
Plug 'https://github.com/tpope/vim-commentary'           " Easy comments
Plug 'https://github.com/LunarWatcher/auto-pairs'        " Auto-pair brackets
Plug 'https://github.com/junegunn/vim-easy-align'        " Easy alignment
Plug 'https://github.com/ntpeters/vim-better-whitespace' " Show trailing whitespace
Plug 'https://github.com/godlygeek/tabular'              " Markdown setup
Plug 'https://github.com/preservim/vim-markdown'
Plug 'https://github.com/lervag/vimtex'                  " LaTeX setup
Plug 'https://github.com/dense-analysis/ale'             " Linting
call plug#end()

" VIM-EASY-ALIGN SETTINGS
" -----------------------------------------------------------------------------
" TRY THESE COMMANDS:
" 1) vipga=
"       visual-select inner paragraph
"       Start EasyAlign command (ga)
"       Align around =
" 2) gaip=
"       Start EasyAlign command (ga) for inner paragraph
"       Align around =

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" VIM-BETTER-WHITESPACE SETTINGS
" -----------------------------------------------------------------------------
let g:better_whitespace_enabled=1
" let g:strip_whitespace_on_save=1
