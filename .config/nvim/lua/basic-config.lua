-- inserts spaces instead of the char when using <TAB>
vim.bo.expandtab = true
vim.bo.softtabstop = 3
vim.o.tabstop = 2
vim.bo.shiftwidth = 2

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

-- keymaps
vim.g.mapleader = " "

-- splits
vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })

-- tabs
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })

-- search pattern
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- J does not move cursor
vim.api.nvim_set_keymap('n', 'J', "mzJ'z", { noremap = true })

-- Y (Yank till end of line)
vim.api.nvim_set_keymap('n', 'Y', 'y$', {noremap = true})

-- move line up
vim.api.nvim_set_keymap('n','<c-k>', '<Esc>:m .-2<CR>==', {noremap = true})
vim.api.nvim_set_keymap('i','<c-k>', '<Esc>:m .-2<CR>==', {noremap = true})
vim.api.nvim_set_keymap('v','K', ":m '>-2<CR>gv=gv", {noremap = true})

-- move line down
vim.api.nvim_set_keymap('n','<c-j>', '<Esc>:m .+1<CR>==', {noremap = true})
vim.api.nvim_set_keymap('i','<c-j>', '<Esc>:m .+1<CR>==', {noremap = true})
vim.api.nvim_set_keymap('v','J', ":m '>+1<CR>gv=gv", {noremap = true})

-- undo breakpoints
vim.api.nvim_set_keymap('i', ',', ',<c-g>u', {noremap = true})
vim.api.nvim_set_keymap('i', '.', '.<c-g>u', {noremap = true})
vim.api.nvim_set_keymap('i', '(', '(<c-g>u', {noremap = true})
vim.api.nvim_set_keymap('i', '[', '[<c-g>u', {noremap = true})
vim.api.nvim_set_keymap('i', '{', '{<c-g>u', {noremap = true})

-- n centers with z
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', {noremap = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', {noremap = true})

-- dir tree
vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25

