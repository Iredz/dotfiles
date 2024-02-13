return {
	"echasnovski/mini.bufremove",
	version = false,
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>bd", "<cmd>lua MiniBufremove.delete()<cr>", { desc = "Delete buffer" })
		require("mini.bufremove").setup()
	end,
}
