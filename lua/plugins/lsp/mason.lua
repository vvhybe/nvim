return {
  {
    "mason-org/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },

    config = function()
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig
      local mason_lspconfig = require("mason-lspconfig")

      local mason_tool_installer = require("mason-tool-installer")

      -- enable mason and configure icons
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "html",
          "html-lsp",
          "cssls",
          "css-lsp",
          "typescript-language-server", -- TypeScript/JavaScript support
          "tailwindcss",
          "tailwindcss-language-server", -- Tailwind CSS
          "svelte",
          "lua_ls",
          "graphql",
          "graphql-language-service-cli", -- GraphQL
          "emmet_ls",
          "prismals",
          "pyright",
          "eslint-lsp", -- ESLint
          "json-lsp", -- JSON
        },
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "pylint", -- python linter
          "mypy", -- python lsp
          "eslint_d", -- javascript linter
        },
      })
    end,
  },

  {
    "b0o/SchemaStore.nvim",
    lazy = true,
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        graphql = { "prettier" },
        python = { "isort", "black", "prettier" },
      },
      -- formatters = {
      --   isort = {
      --     prepend_args = { "--skip-glob", "**/__init__.py" },
      --   },
      -- },
    },
  },

  { "windwp/nvim-ts-autotag" }, -- Auto close/rename HTML/JSX tags
}
