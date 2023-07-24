local bufferline = require("bufferline")

bufferline.setup({
	options = {
		separator_style = "thick",
		mode = "buffers",
		numbers = "ordinal",
		close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
		indicator = {
			icon = "▎", -- this should be omitted if indicator style is not 'icon'
			style = "icon",
		},
		buffer_close_icon = "󰅖",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		highlights = {
			buffer_visible = {
				fg = "#4180A6",
				bg = "",
			},
			buffer_selected = {
				fg = "",
				bg = "#4180A6",
				italic = true,
				bold = true,
			},
		},
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
			},
		},
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
	},
})

vim.g.transparent_groups = vim.list_extend(
	vim.g.transparent_groups or {},
	vim.tbl_map(function(v)
		return v.hl_group
	end, vim.tbl_values(require("bufferline.config").highlights))
)
