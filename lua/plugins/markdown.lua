return {
  {
    "neovim/nvim-lspconfig",
    ft = "markdown",
    config = function()
      require("lspconfig").marksman.setup({})
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
        markdown = { "prettier" },
      },
    },
  },
}
