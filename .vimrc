set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'benmills/vimux'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'junegunn/fzf.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mkitt/tabline.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'heavenshell/vim-tslint'
"Plugin 'zxqfl/tabnine-vim'


set number	"display line numbers
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autochdir
set pastetoggle=<F2>
set ignorecase
set smartcase


"some clipboard magic
set clipboard=unnamedplus

"enable folding of code --> space
set foldmethod=manual
nnoremap <space> za

"tab shortcuts
nnoremap tn :tabnew
nnoremap tk gt
nnoremap tj gT

" aliases
nnoremap <leader>j <Esc>oimport pdb; pdb.set_trace()<Esc>
nnoremap <leader>m <Esc>oif __name__=='__main__':<Esc>o

" NerdTree
let g:NERDDefaultAlign = 'left'
nmap <C-n> :NERDTreeToggle<CR>

" ctrlp configuration
"    r: file search starts in closest git repo
"    a: file search starts in current working directory of the file
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/',
      \ 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" set path for swp files
if empty(glob('~/.vim/backup'))
    silent !mkdir -p ~/.vim/backup
endif
set backupdir=~/.vim/backup//
if empty(glob('~/.vim/swap'))
    silent !mkdir -p ~/.vim/swap
endif
set directory=~/.vim/swap//
if empty(glob('~/.vim/undo'))
    silent !mkdir -p ~/.vim/undo
endif
set undodir=~/.vim/undo//

syntax on
filetype plugin indent on

:highlight Comment ctermfg=green

call vundle#end()            " required
filetype plugin indent on    " required

" use to map jj as Escape to exit insert mode
inoremap jj <Esc>

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
