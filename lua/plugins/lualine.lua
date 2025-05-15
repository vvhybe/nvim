return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  options = {
    theme = "nightfox",
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      function()
        return "󰏩"
      end,
    })
  end,
}
