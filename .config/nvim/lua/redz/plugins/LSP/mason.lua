return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"html",
				"cssls",
				"emmet_language_server",
				"tsserver",
				"pyright",
				"gopls",
				"rust_analyzer",
				"pyright",
				"lua_ls",
				"vimls",
				"jsonls",
			},
			automatic_installation = true,
		})
	end,
}
