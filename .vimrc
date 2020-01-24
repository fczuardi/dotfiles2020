" Syntax highlight on by default
syntax on

call plug#begin('~/.vim/plugged')

" Git diff lines on the gutter (sign column)
" ==================================================================
Plug 'airblade/vim-gitgutter'
set signcolumn=yes
set updatetime=500


call plug#end()
