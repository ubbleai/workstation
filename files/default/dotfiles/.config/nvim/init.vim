set spell spelllang=en_us                   " spelling in English
set undofile                                " ??
set undodir=~/.config/nvim/undodir
set encoding=utf-8                          " encoding

" better clipboard
if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set ignorecase                              " with following line ignore case when lowercasing, don't if uppercase are present
set smartcase
set number                                  " display line number

set conceallevel=1                          " only one character for concealed text

set expandtab                               " tab are spaces
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4

set history=1000                            " remember 1000 items in vim command history

filetype plugin indent on

let g:python_host_prog="~/.pyenv/versions/neovim2/bin/python"
let g:python3_host_prog="~/.pyenv/versions/neovim3/bin/python"

" plugins
call plug#begin('~/.local/share/nvim/plugged')
call plug#end()
" end plugins

" folding
set foldmethod=indent
set foldlevel=99

" mouse
set mouse=a                                 " Automatically enable mouse usage
set mousehide                               " Hide the mouse cursor while typing
