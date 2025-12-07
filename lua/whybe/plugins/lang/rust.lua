return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "rust", "ron" })
    end,
  },
  {
    "mrcjkb/rustaceanvim", -- The best Rust plugin (better than generic lspconfig)
    version = "^5",
    lazy = false, -- This plugin is already lazy
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
      },
    },
  },
}
