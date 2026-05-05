require("nvim-treesitter").setup {
	ensure_installed = { "help", "c", "gcc", "lua", "rust" },

	sync_install = false,

	auto_install = true,

	hightlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true
	}
}
