vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim', -- or                            , branch = '0.1.x',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine-main')
		end
	})

	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	)

	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')

	-- LSP and code completion stuff
        use ('stevearc/conform.nvim')
        use ('j-hui/fidget.nvim')
	use ('williamboman/mason.nvim')
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/cmp-buffer')
	use ('hrsh7th/cmp-path')
	use ('hrsh7th/cmp-cmdline')
	use ('hrsh7th/nvim-cmp')
	use ('L3MON4D3/LuaSnip')
	use ('saadparwaiz1/cmp_luasnip')
end)

