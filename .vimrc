source ~/.vim/.vimrc.neobundle

set nocompatible
set nobackup
set noswapfile
set hidden

set number
set relativenumber
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
set showcmd
set wildmenu
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
" nnoremap TT :TlistToggle<CR>
" let Tlist_Use_Right_Window = 1
" let Tlist_Compact_Format = 1
" let Tlist_Exit_OnlyWindow = 1
" let Tlist_GainFocus_On_ToggleOpen = 1
" let Tlist_File_Fold_Auto_Close = 1
nnoremap TT :NERDTree<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = 1

au BufRead,BufNewFile *.g  set syntax=antlr3
au BufRead,BufNewFile *.mako  set syntax=mako

" autocmd FileType python compiler pylint

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 softtabstop=2 noexpandtab

" :W to save as root
command W execute ":w !sudo tee % > /dev/null"



" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""
