" be iMproved
set nocompatible

filetype off

" Always set line numbers:
set number

" Always wrap long lines:
set wrap

" Enable copying to clipboard using `CTRL + c`
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

" Set encoding to UTF-8
set encoding=utf-8

" Display incomplete commands
set showcmd

" Set tab to two spaces
set tabstop=2 shiftwidth=2

" use spaces, not tabs
set expandtab


" Set colors
color codeschool
set guifont=Monaco:h12
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

