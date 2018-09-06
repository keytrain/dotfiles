"filetype plugin indent on
"syntax on

if !has('gui_running')
  set t_Co=256
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
call plug#end()

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

set backspace=indent,eol,start
set nu
set laststatus=2
set noshowmode
set omnifunc=syntaxcomplete#Complete

" make tab into spaces
set expandtab
set shiftwidth=2
" tab size
set softtabstop=2
set autoindent

" enable mouse usage
set mouse=n
set ttymouse=xterm2

" split windows to the right
set splitright

set ignorecase
set smartcase
set incsearch
set hlsearch
