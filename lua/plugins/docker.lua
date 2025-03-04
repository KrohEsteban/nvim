return {
  {
    "neovim/nvim-lspconfig",
    ft = "dockerfile",
    config = function()
      require("lspconfig").dockerls.setup({})
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "prettier" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        dockerfile = { "prettier" },
      },
    },
  },
}
