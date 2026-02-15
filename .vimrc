" set relative number
set number
set relativenumber
" set tab size 2
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ignorecase
set laststatus=2
syntax on
set autoindent
set clipboard+=unnamed
map j gj
map k gk
" display BAR in insert mode and BLOCK in normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'kamykn/spelunker.vim'
Plug 'vim-airline/vim-airline'
call plug#end()
" --- Emacs key bindings in insert mode ---
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-d> <Del>
inoremap <C-k> <C-o>D
" Since Ctrl+y has the default behavior (repeating the last character)
" change it to something like <C-o>p (paste) if needed.
" ------
" --- Emacs key bindings in insert mode ---
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-d> <Del>
" ------
