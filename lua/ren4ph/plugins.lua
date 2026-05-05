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
		config = function()
			vim.cmd("colorscheme vague")
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TsUpdate"
	}
}
