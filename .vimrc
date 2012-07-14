set nocompatible
set nobackup
set noswapfile
set hidden

set number
set shiftwidth=4
set shiftround
set showmatch
set paste
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set title
set visualbell
set noerrorbells
syntax on
filetype plugin indent on

" Tab
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" Search
set incsearch
set hls
set ignorecase
set smartcase

" Scheme
set t_Co=256
colorscheme mustang

let g:ctags_statusline=1
let generate_tags=1

" Toggle List
nnoremap TT :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

au BufRead,BufNewFile *.g  set syntax=antlr3
au BufRead,BufNewFile *.mako  set syntax=mako

" autocmd FileType python compiler pylint

" :W to save as root
command W execute ":w !sudo tee % > /dev/null"

