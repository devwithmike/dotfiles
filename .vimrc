set number
set ruler
set undolevels=1000
set backspace=indent,eol,start

set autoindent
set copyindent
set shiftwidth=4
set smartindent
set softtabstop=4

set showmatch
set visualbell
set incsearch

syntax on
set title
set showcmd

set nobackup
set noswapfile

nnoremap <F6> :Stdheader<CR>
set colorcolumn=80
highlight ColorColumn ctermbg=240
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar> :let @/=_s<Bar><CR>
set t_Co=256
set comments=sl:/*,mb:\ *,elx:\ */
colo monokai
