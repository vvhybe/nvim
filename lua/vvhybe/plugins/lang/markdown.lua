return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
    end,
  },

  -- Render Markdown
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "md", "markdown" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      heading = { position = "inline" },
    },
  },

  -- Images & Diagrams
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    opts = {
      backend = "kitty", -- Ensure you use Kitty terminal or change this
      integrations = {
        markdown = { enabled = true, download_remote_images = true },
      },
    },
  },
  {
    "3rd/diagram.nvim",
    dependencies = { "3rd/image.nvim" },
    opts = { renderer_options = { mermaid = { theme = "forest" } } },
  },

  -- Previewer
  {
    "npxbr/glow.nvim",
    ft = "markdown",
    opts = { style = "dark", width = 120 },
  },

  -- Wiki (Personal Knowledge Base)
  {
    "lervag/wiki.vim",
    name = "wiki",
    event = "BufEnter *.md",
    init = function()
      vim.g.wiki_root = "~/wiki"
      vim.g.wiki_filetypes = { "md" }
    end,
  },
}
