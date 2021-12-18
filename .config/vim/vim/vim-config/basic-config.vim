
syntax on
filetype plugin indent on 
filetype plugin on
"keep 100 items in the history.
set history=1000
"show percent of where you are in the file
set ruler
set encoding=utf-8
set cursorline
"show the cursor position.
set nocompatible
"BACKUP AND UNDO 
set backup
set backupdir=~/.vim/.backup//
set backupcopy=yes
"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set undofile
set undodir=~/.vim/.undo//
set noswapfile
"show your last cmds in the botton right
set showcmd
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set tabstop=2
set shiftwidth=2
set expandtab
"set expandtab
set noerrorbells
set visualbell
set scrolloff=8
set nohlsearch
set incsearch
set smartcase
set signcolumn=yes
"turn on line number
set number
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
"quick scrolls
set ttyfast
"vim line wrap without breaking a word
set lbr
" set idetention 
set ai 
set si 
set bg=dark
set mouse=a
set cmdheight=3
set updatetime=50
set hidden
set shortmess+=c

" spell checking
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" EXTRAS -------------------------------------------------

" MARKED
:let g:mw_no_mappings = 1	
let g:mwAutoLoadMarks = 1

"ctags
set tags=tags

"change cursor on mode change
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" TMUX CURSOR
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

"YMAL
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" NASM assembly 
set ft=nasm
let g:asmsyntax = 'nasm'
