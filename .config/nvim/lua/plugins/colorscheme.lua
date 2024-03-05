return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup()
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load({
        transparent_bg = false,
      })
    end,
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("material").setup({})
    end,
  },
  {
    "comfysage/evergarden",
    opts = {
      transparent_background = false,
      contrast_dark = "soft", -- 'hard'|'medium'|'soft'
      overrides = {},      -- add custom overrides
    },
  },
}
