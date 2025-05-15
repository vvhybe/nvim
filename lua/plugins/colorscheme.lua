return {
  -- {
  --   "rebelot/kanagawa.nvim",
  --   name = "kangawa",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     vim.cmd.colorscheme("kanagawa-wave")
  --   end,
  -- },

  {
    "tiagovla/tokyodark.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme("tokyodark")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyodark",
    },
  },
}
