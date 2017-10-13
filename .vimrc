set nocompatible
set ignorecase
set smartcase

" Turn off swapfiles
set noswapfile

syntax enable
filetype plugin on

" Set fuzzy-ish finding for files
set path+=**
set wildmenu
set wildignore+=**/node_modules " Get that out of my wildmenu!

" Split new splits to the right default
" I can't get it to work right now
set splitright

" Highlight current line
set cursorline

command! MakeTags !ctags -R .

" Netrw settings
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\\s\s\)\zs\.\S\+'
let g:netrw_winsize=20
let g:netrw_usetab=1

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab

" Line Numbers
set nu

" No auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Fix backspace
set backspace=2

" Plugin time!
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'

call plug#end()
