-- [DOCS](https://github.com/folke/tokyonight.nvim)
return {
  "folke/tokyonight.nvim",
  lazy = false,
  config = function()
    require("tokyonight").setup({
      style = "night",
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
