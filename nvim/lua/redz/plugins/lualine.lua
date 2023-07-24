-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "horizon",
		component_separators = { left = "|", right = "|" },
		--	section_separators = { left = "", right = "" },
		section_separators = { left = " ", right = " " },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		padding = 2,
		symbols = {
			modified = " ●", -- Text to show when the buffer is modified
			alternate_file = "#", -- Text to show to identify the alternate file
			directory = "", -- Text to show when the buffer is a directory
		},
	},
})
