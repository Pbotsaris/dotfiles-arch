require('which-keys')
require('basic-config')
require('coc-config')
require('theme')
require('lualine-config')
require('telescope-config')
require('treesitter-config')

require('packer').startup {
  function(use)
    use 'wbthomason/packer.nvim'
    use 'sainnhe/gruvbox-material'
    use 'nvim-treesitter/nvim-treesitter'
    use {'neoclide/coc.nvim', branch = 'release'}
--  use 'pangloss/vim-javascript'
    use 'evanleck/vim-svelte'
    use 'elixir-editors/vim-elixir'
    use 'ThePrimeagen/git-worktree.nvim'
    use 'folke/which-key.nvim'
		use 'tpope/vim-fugitive'
		use 'tpope/vim-surround'


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
    --  use 'morhetz/gruvbox'
  end
}

-- stop language server errors inside nvim config
vim.fn['coc#config']('sumneko-lua', {
  enableNvimLuaDev = true
})

vim.cmd([[colorscheme gruvbox-material]])
