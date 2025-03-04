-- With catppuccin
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin-mocha",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     flavour = "mocha",
--     transparent_background = true,
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       treesitter = true,
--       telescope = true,
--       mason = true,
--       noice = true,
--       notify = true,
--     },
--   },
--   config = function(_, opts)
--     require("catppuccin").setup(opts)
--     vim.cmd.colorscheme("catppuccin-mocha")
--
--     vim.api.nvim_set_hl(0, "Pmenu", { bg = "#DCDCDC" })
--   end,
-- }

-- With tokyonight
return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      -- floats = "transparent",
    },
  },
}
