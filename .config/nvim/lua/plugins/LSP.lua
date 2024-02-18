return {
	  {
		"williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
		},
		{
    "williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"html",
					"cssls",
					"emmet_language_server",
					"tsserver",
					"gopls",
					"rust_analyzer",
					"pyright",
					"lua_ls",
					"vimls",
					"jsonls",
				},
			})
		end,
	  },
    {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
    end,
    },
}


