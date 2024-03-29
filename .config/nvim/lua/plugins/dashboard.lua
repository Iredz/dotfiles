return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      shortcut_type = "number",
      config = {
        shortcut = {
          { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
          {
            icon = "",
            icon_hl = "@variable",
            desc = " Files",
            group = "Label",
            action = "Telescope find_files",
            key = "f",
          },
          {
            desc = " Old files",
            group = "Label",
            action = "Telescope oldfiles",
            key = "o",
          },
          {
            desc = " dotfiles",
            group = "Number",
            action = "Telescope dotfiles",
            key = "d",
          },
        },
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
