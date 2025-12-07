return {
  -- 1. Install Treesitter Grammars
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "html", "css", "javascript", "typescript", "tsx", "vue", "svelte" })
      end
    end,
  },

  -- 2. Configure LSP Servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        -- Tailwind CSS
        tailwindcss = {
          filetypes_exclude = { "markdown" },
        },
        -- Typescript (vtsls is better than tsserver/ts_ls for Neovim now)
        vtsls = {
          settings = {
            complete_function_calls = true,
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
              experimental = { completion = { enableServerSideFuzzyMatch = true } },
            },
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
              },
            },
          },
        },
        emmet_ls = {
          filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
        },
      },
    },
  },

  -- 3. Configure Autoformatting (Conform)
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
      },
    },
  },
}
