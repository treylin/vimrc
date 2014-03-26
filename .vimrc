" Configuration file for vim
set modelines=0		" CVE-2007-2438

set number

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

set nocompatible " be iMproved
filetype on  " required

syntax on
colorscheme jellybeans

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'AutoClose'
Bundle 'ctrlp.vim'
Bundle 'ZenCoding.vim'
Bundle 'matchit.zip'
" Bundle 'ShowTrailingWhitespace'
Bundle 'EasyMotion'
Bundle 'ctags.vim'
Bundle 'taglist.vim'    
Bundle 'itchyny/lightline.vim'
Bundle 'Pydiction'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/gundo.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

filetype plugin indent on

set laststatus=2
set t_Co=256
" let g:Powerline_symbols = 'fancy'
" let Powerline_symbols = 'compatible'

" if the length of the string is over 80 make the background red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/

nnoremap <F2> :GundoToggle<CR>

au BufRead *.py map <buffer> <F7> :w<CR>:!/usr/bin/env python % <CR>

