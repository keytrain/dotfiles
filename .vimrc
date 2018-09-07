"key's vimrc

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
Plug 'morhetz/gruvbox'
call plug#end()

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

"let g:gruvbox_italic = 1
colorscheme gruvbox

set autoindent
set backspace=indent,eol,start
set complete-=i

set smarttab
" make tab into spaces
set expandtab
set shiftwidth=2
" tab size
set softtabstop=2

set nrformats-=octal

set incsearch
set hlsearch
set ignorecase
set smartcase

set number
set laststatus=2
set ruler
set wildmenu

set display+=lastline

set noshowmode
set autoread

" enable mouse usage
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" split windows to the right
set splitright

