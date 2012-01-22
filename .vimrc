set nocompatible
set nobackup
set incsearch
set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set ignorecase
set paste
syntax on
set hls
filetype plugin indent on

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
au BufRead,BufNewFile *.tmpl  set syntax=mako
au BufRead,BufNewFile *.mako  set syntax=mako

" autocmd FileType python compiler pylint

