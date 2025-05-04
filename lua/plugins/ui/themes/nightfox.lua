-- [DOCS](https://github.com/EdenEast/nightfox.nvim)
return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  config = function()
    require("nightfox").setup({
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
      options = {
        transparent = true,
        --   colorblind = {
        --     enable = true,
        --     severity = {
        --       protan = 0.3,
        --       deutan = 0.6,
        --     },
        --   },
      },
    })
    vim.cmd.colorscheme("nightfox")
  end,
}
