return {
  {
    "neovim/nvim-lspconfig",
    ft = "php",
    config = function()
      require("lspconfig").phpactor.setup({})
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "jay-babu/mason-nvim-dap.nvim",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio", -- <--- Agregá esto
    },
    ft = "php",
    config = function()
      require("dapui").setup()
      require("mason-nvim-dap").setup({
        ensure_installed = { "php" },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "pint" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
      },
    },
  },
}
