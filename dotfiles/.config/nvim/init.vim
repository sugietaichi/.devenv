set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
setlocal signcolumn=no
syntax on

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'prabirshrestha/asyncomplete.vim'      " Auto complete
Plug 'prabirshrestha/vim-lsp'               " LSP
Plug 'prabirshrestha/async.vim'             " Execute in asynchronous
Plug 'prabirshrestha/asyncomplete-lsp.vim'  " Add LSP support
Plug 'mattn/vim-lsp-settings'               " Auto configure vim-lsp

call plug#end()




nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

