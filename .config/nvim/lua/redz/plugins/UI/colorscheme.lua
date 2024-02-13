local M

M = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "crispybaccoon/evergarden",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = false,
      contrast_dark = "soft", -- 'hard'|'medium'|'soft'
      overrides = {},         -- add custom overrides
    },
  },
  {
    'cryptomilk/nightcity.nvim',
    version = false,
    config = function()
      require("nightcity").setup({
        -- kabuki or afterlife
        style = 'kabuki',       -- The theme comes in two styles: kabuki or afterlife
        terminal_colors = true, -- Use colors used when opening a `:terminal`
        invert_colors = {
          -- Invert colors for the following syntax groups
          cursor = true,
          diff = true,
          error = true,
          search = true,
          selection = false,
          signs = false,
          statusline = true,
          tabline = false,
        },
        font_style = {
          -- Style to be applied to different syntax groups
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          search = { bold = true },
        },
        -- Plugin integrations. Use `default = false` to disable all integrations.
        plugins = { default = true },
        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param groups Highlight groups
        ---@param colors ColorScheme
        on_highlights = function(groups, colors) end,
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
      })
    end
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require 'nordic'.load()
      require 'nordic'.setup {
        -- This callback can be used to override the colors used in the palette.
        on_palette = function(palette) return palette end,
        -- Enable bold keywords.
        bold_keywords = false,
        -- Enable italic comments.
        italic_comments = true,
        -- Enable general editor background transparency.
        transparent_bg = false,
        -- Enable brighter float border.
        bright_border = false,
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
        -- Swap the dark background with the normal one.
        swap_backgrounds = false,
        -- Override the styling of any highlight group.
        override = {},
        -- Cursorline options.  Also includes visual/selection.
        cursorline = {
          -- Bold font in cursorline.
          bold = false,
          -- Bold cursorline number.
          bold_number = true,
          -- Avialable styles: 'dark', 'light'.
          theme = 'dark',
          -- Blending the cursorline bg with the buffer bg.
          blend = 0.85,
        },
        noice = {
          -- Available styles: `classic`, `flat`.
          style = 'classic',
        },
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = 'flat',
        },
        leap = {
          -- Dims the backdrop when using leap.
          dim_backdrop = false,
        },
        ts_context = {
          -- Enables dark background for treesitter-context window
          dark_background = true,
        }
      }
    end
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
return M
