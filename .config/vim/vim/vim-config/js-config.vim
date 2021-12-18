" JS & HTML SETUP  ------------------------------------------------------------------------------------------
"prettier coc setup
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap gp :silent %!prettier --stdin-filepath %<CR>
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

" emmet command -> ,,
let g:user_emmet_leader_key=','

"CSS and SCSS
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"js
let g:javascript_plugin_jsdoc = 1

"svelte
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0

" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css, *.scss,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

