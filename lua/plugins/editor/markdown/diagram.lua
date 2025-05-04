return {
  "3rd/diagram.nvim",
  dependencies = {
    "3rd/image.nvim",
  },
  opts = { -- you can just pass {}, defaults below
    renderer_options = {
      mermaid = {
        background = nil, -- nil | "transparent" | "white" | "#hex"
        theme = "forest", -- nil | "default" | "dark" | "forest" | "neutral"
        scale = 1, -- nil | 1 (default) | 2  | 3 | ...
        width = nil, -- nil | 800 | 400 | ...
        height = nil, -- nil | 600 | 300 | ...
      },
      plantuml = {
        charset = "UTF-8", -- nil | "UTF-8" | "ISO-8859-1" | ...
      },
      d2 = {
        theme_id = 1,
        dark_theme_id = nil,
        scale = nil,
        layout = nil,
        sketch = nil,
      },
      gnuplot = {
        size = "800,600", -- nil | "800,600" | ...
        font = "CaskaydiaCove Nerd Font", -- nil | "Arial,12" | ...
        theme = "dark", -- nil | "light" | "dark" | custom theme string
      },
    },
  },
}
