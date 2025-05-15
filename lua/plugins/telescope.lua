return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules/" },
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
