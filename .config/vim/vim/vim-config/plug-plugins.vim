call plug#begin('~/.vim/plugged')

"THEME

Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'mhinz/vim-startify'
Plug 'arzg/vim-colors-xcode' 
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"icons
Plug 'ryanoasis/vim-devicons'

"git
Plug 'tpope/vim-fugitive'

"ruby
Plug 'vim-ruby/vim-ruby'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


"ALL LANGUAGES
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

"Plug 'christoomey/vim-tmux-navigator'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-rooter'

"GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rust
Plug 'rust-lang/rust.vim'

"ELIXIR
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'tpope/vim-endwise' 

"C
Plug 'vim-scripts/c.vim'

"PYTHON
Plug 'psf/black', { 'branch': 'stable' }

"JS & HTML
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'pangloss/vim-javascript'
Plug 'eslint/eslint'
Plug 'mxw/vim-jsx'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'codechips/coc-svelte', {'do': 'npm install'}

"Plug 'yuezk/vim-js'

"CSS
Plug 'cakebaker/scss-syntax.vim'
Plug 'JulesWang/css.vim' " only necessary if your Vim version < 7.4

"MARK
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
"Plug 'jaxbot/semantic-highlight.vim'
"Plug 'bigfish/vim-js-context-coloring'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'


"KEYBIDING HELPER
Plug 'liuchengxu/vim-which-key'
" DEBUG
Plug 'puremourning/vimspector'

call plug#end()

