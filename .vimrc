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
Plugin 'L9'
Plugin 'ctrlp.vim'
Plugin 'bufexplorer.zip'
Plugin 'Mark'
Plugin 'The-NERD-tree'
Plugin 'matrix.vim'
Plugin 'closetag.vim'
Plugin 'The-NERD-Commenter'
Plugin 'matchit.zip'
Plugin 'AutoComplPop'
Plugin 'jsbeautify'
Plugin 'nginx.vim'
Plugin 'SuperTab'
Plugin 'shanzi/autoHEADER'

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



" ============
"  custom key
" ============

" not compatible with the old-fashion vi mode
set nocompatible

" Enable syntax highlighting
syntax on

" http://zeering.com/Answer.aspx?q=iterm%20vim%20colorscheme%20not%20working&i=149504
let &t_Co=256
colorscheme railscasts

filetype plugin indent on    " required

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

let mapleader=","
set nu

" Enable auto-indentation (useless)
set autoindent

" use mouse at normal and visual status
set mouse=nv

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" Fix bad autoindent of pasted text
set paste

" no endless backup
set nobackup

" Default to soft tabs, 4 spaces
set expandtab
set sw=4
set sts=4

" comment
map <leader><leader> <leader>c<space>

" next and prev tab
noremap <F7> gT
noremap <F8> gt

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" set list to display invisible characters, use tail space hightlight substitude eol:$
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" hightlight tail space
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" no BOM
set nobomb

" gen HEADER
noremap <leader>h :AutoHeader<CR>

" =======================
"  plugin configurations
" =======================

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

" autoHEADER
let g:autoHEADER_default_email="xiebin01@baidu.com"
let g:autoHEADER_default_author="DestinyXie"
let g:autoHEADER_fill_char_repeat=78
