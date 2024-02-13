return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	version = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			sync_install = true,
			auto_install = false,
			ensure_installed = {
				"html",
				"css",
				"javascript",
				"json",
				"lua",
				"python",
				"typescript",
				"go",
				"rust",
				"vim",
			},
		})
	end,
}
