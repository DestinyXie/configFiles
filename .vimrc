set nocompatible

"plugin tool
execute pathogen#infect()
syntax on
filetype plugin indent on

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set encoding=utf-8
"show line number
set nu
"set a tab to four spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set auto indent
set ai!

if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"set vim status
set laststatus=2 "show status
set statusline=
"buffer number
set statusline+=%2*%-3.3n%0*\
"file name
set statusline+=%f\
"flag
set statusline+=%h%1*%m%r%w%0*
set statusline+=[
if v:version >= 600
    "filetype
    set statusline+=%{strlen(&ft)?&ft:'none'},
    "encoding
    set statusline+=%{&fileencoding},
endif
"file format
set statusline+=%{&fileformat}]
"right align
set statusline+=%=
"current char
"charset statusline+=%2*0x%-8B\
set statusline+=0x%-8B\
"offset
set statusline+=%-14.(%l,%c,%v%)\ %<%P
if filereadable(expand("$VIM/vimfile/plugin/vimbuddy.vim"))
    "vim buddy
    set statusline+=\ %{VimBuddy()}
endif
"status color
highlight StatusLine guifg=StateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"tab shortcut
map <F7> :NERDTreeToggle<cr>
imap <F7> <ESC>:NERDTreeToggle<cr>
map <C-l> :tabn<cr>
map <C-h> :tabp<cr>
map <C-n> :tabnew<cr>
map <C-k> :bn<cr>
map <C-j> :bp<cr>

