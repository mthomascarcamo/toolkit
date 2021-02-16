" https://vimawesome.com/
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/vim-plug'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

Plugin 'tmhedberg/SimpylFold'

" Plugin 'Valloric/YouCompleteMe'
"    YouCompleteMe unavailable: requires Vim 8.1.2269+.
" Plugin 'davidhalter/jedi-vim' 
"    jedi-vim failed to initialize Python: jedi-vim requires Vim with support for Python 3.

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'pythoncomplete'
Plugin 'pylint.vim'
Plugin 'tpope/vim-fugitive'

" Plugin 'wakatime/vim-wakatime'
"    https://www.reddit.com/r/selfhosted/comments/a7z5gi/are_there_any_wakatime_alternatives
"    https://github.com/blindFS/vim-taskwarrior
"    https://github.com/PAntoine/TimeKeeper
" Plugin 'n0v1c3/vira'                        
"    vim has to be compiled with +python3 to run vira
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 
"    You need
"    vim compiled with Python 2.6, 2.7 or 3.2 and later support for Powerline to
"    work. Please consult the documentation for more details.

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
"Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
"Plug 'zefei/simple-dark'
Plug 'sainnhe/sonokai'
" Plug 'wakatime/vim-wakatime'
"    https://www.reddit.com/r/selfhosted/comments/a7z5gi/are_there_any_wakatime_alternatives
"    https://github.com/blindFS/vim-taskwarrior
"    https://github.com/PAntoine/TimeKeeper
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
":syntax on
":color simple-dark
"colorscheme sonokai
"if has('gui_running')
"    set background=dark
    "colorscheme solarized
"    colorscheme sonokai
"else
    "colorscheme sonokai
    "colorscheme zenburn
"endif
:syntax enable
:colorscheme desert
":color simple-dark
call togglebg#map("<F5>")


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


set nu
set clipboard=unnamed


