nnoremap <SPACE> <Nop>
let mapleader=" "
map <C-f> :Files<CR>

" no default maps for commenter
let g:NERDCreateDefaultMappings = 0

call which_key#register('<Space>', "g:which_key_map")

vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=200

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

"nmap <Leader>M 
"nmap <Leader>N 

" Single mappings

let g:which_key_map['m'] = [ ':MixFormat'						  		 , 'Format Elixir' ]
let g:which_key_map['r'] = [ ':RustFmt'						  			 , 'Format Rust' ]
let g:which_key_map['t'] = [ ':TlistOpen'							   	 , 'Open Tag List' ]
let g:which_key_map['M'] = [ '<Plug>MarkSet'					     , 'Variable Highlight' ]
let g:which_key_map['C'] = [ '<Plug>MarkClear'						 ,'Clear Variable Highlight' ]
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle' 	 , 'Comment' ]
let g:which_key_map['p'] = [ ':Pettier'										 , 'Prettier' ]
let g:which_key_map['n'] = [ ':NERDTree'     						 	 , 'Open NERDTree' ]
let g:which_key_map['b'] = [ ':Buffers'            	    	 , 'Search Buffers']
let g:which_key_map['l'] = [ ':BLines'            	     	 , 'Search Current File']
let g:which_key_map['f'] = [ ':GFiles'            	     		 , 'Search Files']
let g:which_key_map['h'] = [ '<C-W>s'                   	 , 'Split Below']
let g:which_key_map['v'] = [ '<C-W>v'                    	 , 'Split Right']
let g:which_key_map['Q'] = [ ':qa'               	 			   , 'Quit All']
let g:which_key_map['q'] = [ ':q'                 	 		   , 'Quit']
let g:which_key_map['bw'] = [ ':bw'                	 		   , 'Buffer Wipeout']
let g:which_key_map['w'] = [ ':w'                     	 	 , 'Save' ]
let g:which_key_map['`'] = [ '<C-w>w'                 		 , 'Next Window' ]
let g:which_key_map['W'] = [ ':w!'                      	 , 'Save All' ]

" c is for CoC 
let g:which_key_map.c = {
		   \ 'name' : '+CoC' ,
			 \ 'f' : ['<Plug>(coc-format-selected)' 		 , 'Format Selected'],
		   \ 'n' : ['<Plug>(coc-rename)'       			   ,	'Rename Multiple Occurances'],
		   \ 'c' : ['<Plug>(coc-fix-current)'     		 , 'Try Quickfix'],
		   \ 's' : ['<Plug>(coc-range-select)'     		 , 'Range Select'],
		   \ 'd' : [':CocDiagnostics'   	  		       , 'Diagnostics'],
			\	}


" o is for go 
let g:which_key_map.o = {
		   \ 'name' : '+Go' ,
		   \ 'b' : [':GoBuild'     													 , 'Build Go Source'],
		   \ 'r' : [':GoRun'     														 , 'Build And Run Go Source'],
		   \ 'd' : [':GoDef'     														 , 'Go To Declaration'],
		   \ 'u' : [':GoDebugStart'     										 , 'Run Debugger'],
		   \ 'D' : [':GoDoc'     														 , 'Run Documentation'],
		   \ 's' : [':GoTest'     													 , 'Run Test'],
		   \ 'I' : [':GoInstall'     												 , 'Run Install'],
		   \ 'i' : [':GoImport'     												 , 'Import Package'],
		   \ 'L' : [':GoLint'     													 , 'Run Linter'],
		   \ 'l' : [':GoMetaLinter'     										 , 'Run All Linters'],
		   \ 't' : [':GoAddTags'     												 , 'Add Tags'],
		   \ 'T' : [':GoRemoveTags'     										 , 'Remove Tags'],
		   \ 'n' : [':GoRename'     												 , 'rename identifier'],
			\	}

" g is for git 
let g:which_key_map.g = {
		   \ 'name' : '+Git' ,
		   \ 'g' : [':Git '     														 , 'Open Git'],
		   \ 'w' : [':Gwrite'     													 , 'Save file and add to staging'],
		   \ 'rd' : [':Gread'     													 , 'Revert current file to last checked version'],
		   \ 'rm' : [':GRemove'     												 , 'Remove current file/buffer from repo'],
			 \ 'mv' : [':Gmove' 												    	 , 'Rename file/buffer in repo'],
		   \ 'f' : [':Git f'     														 , 'Git Fetch'],
			 \ 'aa' : [':Git aa' 												    	 , 'Git add -A'],
		   \ 'c' : [':Git commit'       			 							 ,	'Git commit'],
		   \ 's' : [':Git status'     											 , 'Status'],
		   \ 'p' : [':Git push origin main'    							 , 'Status'],
		   \ 'cd' : [':Gcd'       			 										 ,	'CD Relative to Repo'],
		   \ 'b' : [':Git branch'       			 							 ,	'List branches'],
		   \ 'cob' : [':Git -b checkout'     								 , 'Git checkout -b'],
		   \ 'co' : [':Git  checkout'     									 , 'Switch Branches'],
		   \ 'dt' : [':Git difftool'     										 , 'Diff Tool'],
		   \ 'd' : [':Gdiffsplit'     											 , 'Perform Diff agaisnt the Given File'],
		   \ 'mt' : [':Git mergetool'     									 , 'Merge Tool'],
			 \ 'bm' : [':Git blame'     											 , 'Git blame {file}'],
		   \ 'ls' : [':Gllog'       			 									 ,	'Git Log'],
		   \ 'l' : [':Git l'       			 										 ,	'Git single line'],
			\	}

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':Buffers'      , 'search buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 't' : [':Rg'           , 'Search text'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

let g:which_key_map[','] = {
      \ 'name' : '+emmet' ,
      \ ',' : ['<Plug>(emmet-expand-abbr)'               , 'expand abbr'],
      \ ';' : ['<plug>(emmet-expand-word)'               , 'expand word'],
      \ 'u' : ['<plug>(emmet-update-tag)'                , 'update tag'],
      \ 'd' : ['<plug>(emmet-balance-tag-inward)'        , 'balance tag in'],
      \ 'D' : ['<plug>(emmet-balance-tag-outward)'       , 'balance tag out'],
      \ 'n' : ['<plug>(emmet-move-next)'                 , 'move next'],
      \ 'N' : ['<plug>(emmet-move-prev)'                 , 'move prev'],
      \ 'i' : ['<plug>(emmet-image-size)'                , 'image size'],
      \ '/' : ['<plug>(emmet-toggle-comment)'            , 'toggle comment'],
      \ 'j' : ['<plug>(emmet-split-join-tag)'            , 'split join tag'],
      \ 'k' : ['<plug>(emmet-remove-tag)'                , 'remove tag'],
      \ 'a' : ['<plug>(emmet-anchorize-url)'             , 'anchorize url'],
      \ 'A' : ['<plug>(emmet-anchorize-summary)'         , 'anchorize summary'],
      \ 'm' : ['<plug>(emmet-merge-lines)'               , 'merge lines'],
      \ 'c' : ['<plug>(emmet-code-pretty)'               , 'code pretty'],
      \ }
 
