return {
  {
    "neovim/nvim-lspconfig",
    ft = "python",
    config = function()
      -- Forzar la ruta correcta a python3_host_prog
      vim.g.python3_host_prog = "C:/Users/Ekroh.Nubity/AppData/Local/Programs/Python/Python313/python.exe"

      -- Configurar el LSP pyright
      local lspconfig = require("lspconfig")
      lspconfig.pyright.setup({})
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "black" },
    },
  },
  {
    "stevearc/conform.nvim",
    ft = "python",
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
    },
  },
}
