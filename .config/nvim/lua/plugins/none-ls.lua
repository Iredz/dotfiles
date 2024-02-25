return {
	"nvimtools/none-ls.nvim",
	config = function()
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local null_ls = require("null-ls")
		null_ls.setup({
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							--vim.lsp.buf.formatting_sync()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.completion.luasnip,
				null_ls.builtins.completion.spell,
			},
		})
		vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, {})
	end,
}
