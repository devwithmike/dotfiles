set number
set ruler
set undolevels=1000
set backspace=indent,eol,start
set autoindent
set copyindent
set smartindent
set shiftwidth=4
set tabstop=4
set cindent
set showmatch
set visualbell
set incsearch
set title
set showcmd
set cursorline
set nobackup
set noswapfile
set colorcolumn=80
set comments=sl:/*,mb:\ *,elx:\ */
syntax on
highlight ColorColumn ctermbg=240
se mouse+=a

if (has("termguicolors"))
 set termguicolors
endif
colo monokaitasty
let g:gitgutter_map_keys = 0
set updatetime=100

inoremap jj <ESC>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar> :let @/=_s<Bar><CR>
nmap <F6> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd p
