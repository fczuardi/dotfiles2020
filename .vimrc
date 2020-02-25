" tab to be 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" display tab chars and trailing spaces
set listchars=tab:␉·,trail:␠,nbsp:⎵
set list


" highlight search terms
set hlsearch

" incremental search
set incsearch

" case insensitive search unless the search has capital letters
set ignorecase
set smartcase


" syntax highlight on by default
syntax on

" colorcloumn
set colorcolumn=100

" usefulf for vim-gitgutter
set signcolumn=yes
set updatetime=500

" display typed keys
set showcmd

" always display filename on the bottom, even for a single screen
set laststatus=2


" use spacebar as leader, and leader + w to save
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"Ctrl T to create a new tab
nnoremap <C-t> :tabnew<Space>
inoremap <C-t> <Esc>:tabnew<Space>


" Plugins
call plug#begin('~/.vim/plugged')

" Git diff lines on the gutter (sign column)
Plug 'airblade/vim-gitgutter'

" Javascript and jsx (React)
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }

call plug#end()
