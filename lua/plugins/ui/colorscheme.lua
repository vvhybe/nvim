return {
  {
    "rebelot/kanagawa.nvim",
    name = "kangawa",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme("kanagawa-wave")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
