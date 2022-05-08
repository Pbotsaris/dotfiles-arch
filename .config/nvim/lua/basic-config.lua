vim.wo.number = true
vim.o.termguicolors = true

vim.o.wrap = false
vim.o.incsearch = true
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.numberwidth = 4
vim.o.termguicolors = true

vim.o.colorcolumn = '270'

vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

-- dir tree
vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25


-- vim script to convert
vim.cmd([[
set expandtab
set softtabstop=3
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set tags=tags
set visualbell
set backup
set backupdir=~/.vim/.backup//
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set backupcopy=yes
set undodir=~/.vim/.undo//
autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
]])



-- inserts spaces instead of the char when using <TAB>
--vim.g.expandtab = true
--vim.g.softtabstop = 3
--vim.o.tabstop = 2
--vim.bo.shiftwidth =	2
--vim.bo.smartindent = true;
--vim.bo.autoindent = true;


