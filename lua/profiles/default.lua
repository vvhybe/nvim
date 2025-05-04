-- Default profile for LazyVim
return {
  setup = function()
    require("lazy").setup({
      install = { colorscheme = { "nightfox" } },
    })
  end,
}
