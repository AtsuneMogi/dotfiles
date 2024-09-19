" set number relatively
set number
set relativenumber
" set tab size 4
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ignorecase
set laststatus=2
syntax on
filetype on
set autoindent
set clipboard+=unnamed
set n gj
map k gk
" plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'kamykn/spelunker.vim'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()
" vimtex
let g:vimtex_latexmk_continuous = 1
let g:vimtex_latexmk_background = 1
let g:vimtex_view_general_viewer = 'zathura'
let maplocalleader = ","
" key bindings for nerdtree
noremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

