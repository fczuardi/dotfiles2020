" Syntax highlight on by default
syntax on

" highlight search terms
set hlsearch

" usefulf for vim-gitgutter
set signcolumn=yes
set updatetime=500

call plug#begin('~/.vim/plugged')

" Git diff lines on the gutter (sign column)
Plug 'airblade/vim-gitgutter'

call plug#end()
