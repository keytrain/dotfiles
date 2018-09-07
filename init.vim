"key's vimrc

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
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

set termguicolors
colorscheme blue
colorscheme gruvbox
"let g:gruvbox_italic = 1

" make tab into spaces
set expandtab
set shiftwidth=2
" tab size
set softtabstop=2

set ignorecase
set smartcase

set number

set noshowmode
set mouse=a
"set splitright

