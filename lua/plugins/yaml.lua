return {
  {
    "neovim/nvim-lspconfig",
    ft = "yaml",
    config = function()
      require("lspconfig").yamlls.setup({})
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
        yaml = { "prettier" },
      },
    },
  },
}
