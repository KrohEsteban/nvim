return {
  {
    "neovim/nvim-lspconfig",
    ft = "sql",
    config = function()
      require("lspconfig").sqlls.setup({})
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "sql-formatter" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sql-formatter" },
      },
    },
  },
}

