return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "f-person/git-blame.nvim" },
  config = function()
    vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
    local git_blame = require("gitblame")
    require("lualine").setup({
      options = {
        --component_separators = { left = "", right = "" },
        component_separators = { left = "|", right = "|" },
        --section_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        theme = "auto",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics", "filename" },
        lualine_c = {
          { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
        },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
