return {
	{
	    'nvim-telescope/telescope.nvim', version = '*',
	    dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	    }
	},
	{
		"vague-theme/vague.nvim", version  = "*",
	},
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {}
    },
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate"
	},
	{
		"theprimeagen/harpoon",
		lazy = false,
	}, {
		"mbbill/undotree",
	},
	{
		"tpope/vim-fugitive"
	}, 
	{
		"VonHeikemen/lsp-zero.nvim",
		lazy = false,
		dependencies = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},
			
			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},
			
			-- Snippets
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		}
	},
    {
        "folke/which-key.nvim"
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },

}
