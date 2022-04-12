local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing Packer')
  vim.cmd(':!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[ packadd packer.nvim ]]

require('packer').startup {
  function()
    use 'wbthomason/packer.nvim'
    
    -- On buffer stuff
    use { 
      'norcalli/nvim-colorizer.lua',
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      requires = { 'nathom/filetype.nvim' },
    }
    
    -- UI
    -- use 'arcticicestudio/nord-vim'
    use 'catppuccin/nvim'
    use 'shaunsingh/nord.nvim'
    use 'andersevenrud/nordic.nvim'


    use 'RRethy/nvim-base16'

 use {
      'goolord/alpha-nvim',
      config = function()
        require('configs.alpha')
      end
        
    }


  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use "terrortylor/nvim-comment"
 use {
     'kyazdani42/nvim-tree.lua',
     requires = {
       'kyazdani42/nvim-web-devicons', -- optional, for file icon
     },
			-- config = function()
				-- require('configs.tree')
			-- end,
     -- config = function() require'nvim-tree'.setup {} end
 }

    use "lewis6991/impatient.nvim"
    use { 
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
    }
    use { 
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
    }
    use {
      'akinsho/bufferline.nvim',
    }
     
    -- Completion
    use 'jiangmiao/auto-pairs'
    use {
      'hrsh7th/nvim-cmp',
      requires = { 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline'},
    }
    
    -- Snippets
    use {
      'L3MON4D3/LuaSnip',
      after = 'nvim-cmp',
      requires = { 'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets' },
    }
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float { border = 'single' }
      end,
      prompt_border = 'single',
    },
  },
}
