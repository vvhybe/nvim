return {
  "folke/which-key.nvim",
  opts = {
    default = {
      ["<leader>k"] = { icon = "", name = "+wiki" },
    },
    icons = {
      rules = {
        -- LazyVim.config.icons.kinds
        { pattern = "wiki", icon = "", color = "blue" },
      },
    },
  },
}
