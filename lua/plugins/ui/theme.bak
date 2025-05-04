return {
  -- Current Active theme
  -- USING: lazy = true, priority = 1000
  -- So that it will be loaded after the main theme
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        -- ...
      })

      -- All available colorschemes:
      -- [HERE](https://github.com/projekt0n/github-nvim-theme?tab=readme-ov-file#supported-colorschemes--comparisons)
      vim.cmd("colorscheme github_dark_default")
    end,
  },

  -- Add more themes here, but keep them lazy-loaded
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
  },
}
