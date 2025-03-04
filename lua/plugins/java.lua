return {
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    config = function()
      local home = vim.fn.expand("$HOME")
      local workspace_dir = home .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

      local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
      local launcher_jar = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
      local config_dir = jdtls_path .. "/config_win" -- cambia según sistema

      local config = {
        cmd = {
          "java",
          "-Declipse.application=org.eclipse.jdt.ls.core.id1",
          "-Dosgi.bundles.defaultStartLevel=4",
          "-Declipse.product=org.eclipse.jdt.ls.core.product",
          "-Dlog.protocol=true",
          "-Dlog.level=ALL",
          "-Xmx2G",
          "--add-modules=ALL-SYSTEM",
          "--add-opens",
          "java.base/java.util=ALL-UNNAMED",
          "--add-opens",
          "java.base/java.lang=ALL-UNNAMED",
          "-jar",
          launcher_jar,
          "-configuration",
          config_dir,
          "-data",
          workspace_dir,
        },
        root_dir = require("jdtls.setup").find_root({
          "gradlew",
          ".git",
          "mvnw",
          "pom.xml",
          "build.gradle",
        }),
      }

      require("jdtls").start_or_attach(config)

      -- Mapas útiles (opcional pero recomendado)
      local bufnr = vim.api.nvim_get_current_buf()
      local function map(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
      end

      map("n", "<leader>oi", require("jdtls").organize_imports)
      map("n", "<leader>jc", require("jdtls").compile)
      map("n", "<leader>ev", require("jdtls").extract_variable)
      map("n", "<leader>ec", require("jdtls").extract_constant)
      map("v", "<leader>em", function()
        require("jdtls").extract_method(true)
      end)
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "google-java-format",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
      },
    },
  },
}
