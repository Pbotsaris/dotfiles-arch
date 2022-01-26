require('packer').startup {
  function(use)
		use 'wbthomason/packer.nvim'
    use 'sainnhe/gruvbox-material'
    use 'nvim-treesitter/nvim-treesitter'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'pangloss/vim-javascript'
    use 'evanleck/vim-svelte'
    use 'elixir-editors/vim-elixir'
    use 'ThePrimeagen/git-worktree.nvim'
    use 'folke/which-key.nvim'
		use 'tpope/vim-fugitive'
		use 'tpope/vim-surround'
    use 'tpope/vim-eunuch'
    use 'mhinz/vim-mix-format'
    use 'windwp/nvim-autopairs'
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    --  use 'neovim/nvim-lspconfig'
    --  use 'glepnir/lspsaga.nvim'
      use 'morhetz/gruvbox'
      use 'EdenEast/nightfox.nvim'
  end
}

require('which-keys')
require('basic-config')
require('keykinds')
require('coc-config')
require('theme')
require('lualine-config')
require('telescope-config')
require('treesitter-config')

require('nvim-autopairs').setup{}

-- stop language server errors inside nvim config
vim.fn['coc#config']('sumneko-lua', {
enableNvimLuaDev = true
})

require('nightfox').load('nordfox')


