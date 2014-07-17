"
" Vundle
" https://github.com/gmarik/vundle
"

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'gmarik/vundle'
Plugin 'molokai'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'bufexplorer.zip'
Plugin 'Mark'
Plugin 'The-NERD-tree'
Plugin 'matrix.vim'
Plugin 'closetag.vim'
Plugin 'The-NERD-Commenter'
Plugin 'matchit.zip'
Plugin 'AutoComplPop'
Plugin 'jsbeautify'
Plugin 'less.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required


"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Enable syntax highlighting
syntax on
colorscheme molokai

" Enable auto-indentation
set autoindent
filetype plugin indent on    " required

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

let mapleader=","
set nu

" use mouse at normal and visual status
set mouse=nv

" NERDTree setting
nnoremap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2
let NERDTreeMouseMode=2
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_gui_startup=0
" open directory of current opened file
map <leader>r :NERDTreeFind<cr>
map <leader>n :NERDTreeToggle<cr>

" make nerdtree look nice
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=30
let NERDTreeIgnore=['\.pyc$']

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" Fix bad autoindent of pasted text
set paste
 
" Default to soft tabs, 2 spaces
set expandtab
set sw=2
set sts=2

" comment
map <leader><leader> <leader>c<space>
