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

  -- {
  --   "catppuccin/nvim",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     vim.cmd.colorscheme("catppuccin-mocha")
  --   end,
  -- },

  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("nordic")
  --   end,
  -- },

  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("carbonfox")
  --   end,
  -- },

  -- {
  --   "tiagovla/tokyodark.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     vim.cmd.colorscheme("tokyodark")
  --   end,
  -- },

  {
    "yorumicolors/yorumi.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("yorumi")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "yorumi",
    },
  },
}
