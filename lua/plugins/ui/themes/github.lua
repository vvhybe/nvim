-- All available colorschemes:
-- [HERE](https://github.com/projekt0n/github-nvim-theme?tab=readme-ov-file#supported-colorschemes--comparisons)
return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  lazy = false,
  config = function()
    -- require("github-theme").setup({
    --   -- ...
    -- })

    vim.cmd("colorscheme github_dark_default")
  end,
}
