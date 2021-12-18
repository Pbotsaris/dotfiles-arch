" Y behaves like D
nnoremap Y y$

" n stays centered
nnoremap n nzzzv
nnoremap N Nzzzv

" J concat doesn't move cursor
nnoremap J mzJ'z


" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ( (<c-g>u
inoremap { {<c-g>u
inoremap [ [<c-g>u

" Magical move text!  
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <c-k> <esc>:m .-2<CR>==
inoremap <c-j> <esc>:m .+1<CR>==

nnoremap <c-j> <esc>:m .+1<CR>==
nnoremap <c-k> <esc>:m .-2<CR>==
