" https://vimawesome.com/
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible              " be iMproved, required

call plug#begin('~/.vim/bundle')
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-sensible'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'pythoncomplete'
Plug 'pylint.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/sonokai'
Plug 'blindFS/vim-taskwarrior'
Plug 'vim-airline/vim-airline'
" Plug 'n0v1c3/vira'
"    vim has to be compiled with +python3 to run vira
" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"    You need
"    vim compiled with Python 2.6, 2.7 or 3.2 and later support for Powerline to
"    work. Please consult the documentation for more details.
call plug#end()
 
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1

:syntax enable
:colorscheme desert

call togglebg#map("<F5>")


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


set nu
set clipboard=unnamed


