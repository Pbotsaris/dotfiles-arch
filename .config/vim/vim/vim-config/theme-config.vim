" THEME ----------------------------------------------------------------------------------------

"DeViIcons
"set font for deviIcons 
set guifont=DroidSansMono_Nerd_Font:h11
"font for airline and deviIcons to work
let g:airline_powerline_fonts = 1

"Coc statusline
let g:airline#extensions#coc#enabled = 1

"Rainbow parentheses + disable on nerdtree
let g:rainbow_active = 1 
let g:rainbow_conf = {
	\	'separately': {
			\ 'html': 0,
	\		'nerdtree': 0,
	\	}
	\}

"let g:airline_theme = 'sonokai'
"
"let g:airline_theme='dracula'
 let g:airline_theme='gruvbox'

"ONE DARK
"if (empty($TMUX))
"  if (has("nvim"))
"    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

"onedark

"if (has("autocmd"))
"  augroup colorextend
"    autocmd!
"    let s:white = { "gui": "#ccd8e8", "cterm": "145", "cterm16" : "7" }
"    autocmd ColorScheme * call onedark#extend_highlight("Normal", { "fg": s:white })
"  augroup END
"endif

set termguicolors
"GRUVBOX
let g:gruvbox_invert_tabline = "1"
" MATERIAL GRUVBOX
let g:gruvbox_material_disable_italic_comment = 1
"let g:gruvbox_material_background = 'hard'
"let g:gruvbox_contrast_dark = "hard"
"let g:gruvbox_improved_strings=1
"autocmd vimenter * ++nested colorscheme gruvbox
"
" let g:dracula_colorscheme_bg = "darker"

   let g:sonokai_style = 'shusia'
   let g:sonokai_enable_italic = 1
   let g:sonokai_disable_italic_comment = 1

 augroup vimrc
autocmd!

"  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=#181921

 augroup END

"colorscheme sonokai
"colorscheme xcodedark
"colorscheme onedark
colorscheme gruvbox 
"colorscheme dracula


