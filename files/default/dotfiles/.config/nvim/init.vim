" vim configuration
set number              " line numbers
set ruler               " Show the line and column numbers of the cursor.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set expandtab           " Insert spaces when TAB is pressed.
" set tabstop=2           " Render TABs using this many spaces.
" set shiftwidth=2        " Indentation amount for < and > commands.<Paste>
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  " set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
" set list                " Show problematic characters.
" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" leader key
let mapleader = ","

" neovim keymapping
" changing window
:tnoremap <Esc> <C-\><C-n>
:tnoremap Ì <C-\><C-n><C-w>h
:tnoremap Ï <C-\><C-n><C-w>j
:tnoremap È <C-\><C-n><C-w>k
:tnoremap ¬ <C-\><C-n><C-w>l
:nnoremap Ì <C-w>h
:nnoremap Ï <C-w>j
:nnoremap È <C-w>k
:nnoremap ¬ <C-w>l
:nnoremap <C-t> :vs term://zsh<CR>  " open a terminal easily

" python support using pyenv neovim virtualenv
let g:python_host_prog = '/usr/local/var/pyenv/versions/neovim2/bin/python2'
let g:python3_host_prog = '/usr/local/var/pyenv/versions/neovim3/bin/python3'

" Run Neomake after writing buffer to disk or when entering a buffer
autocmd! BufWritePost,BufEnter * Neomake
" Neomake flake8 support
let g:neomake_python_flake8_maker = {
    \ 'args': ['--format=default'],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ }
let g:neomake_python_enabled_makers = ['flake8']
"
" c++
let g:neomake_cpp_gcc_maker = {
    \ 'args': ['-Wall', '-Wextra', '-Werror', '-I/Users/michaeljourno/workspace/KinCub/fixe/kincub/cuda/include'],
    \ 'exe': 'g++',
    \ }

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Neomake plugin for syntax checking and make type of command
Plug 'neomake/neomake'

" live auto-completion dark force
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go'}

" jedi-vim for python auto-completion
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'zchee/deoplete-jedi'

" python pep8 indent
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" vim-go for cool go stuff
Plug 'fatih/vim-go', { 'for': 'go' }

" json syntax highlighting
Plug 'elzr/vim-json', { 'for': 'json' }

" javascript syntax highlighting
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" vim-gnupg
Plug 'jamessan/vim-gnupg'

" Initialize plugin system
call plug#end()

" Execute .nvimrc files
set exrc
set secure
