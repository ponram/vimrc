"syntax on
"autocmd vimenter * NERDTree
"set nocompatible
"filetype plugin indent on
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"To avoid pressing shift before :
map ; :
"To view doc strings for folded code
let g:SimpylFold_docstring_preview=1

"PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set number |
    \ set fileformat=unix
"For cpp files
au BufNewFile,BufRead *.cpp
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set tags+=~/.vim/tags/cpp |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set number |
    \ set fileformat=unix
au BufNewFile,BufRead *.h
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set tags+=~/.vim/tags/cpp
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set number |
    \ set fileformat=unix

set encoding=utf-8
let python_highlight_all=1
syntax on
