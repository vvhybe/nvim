return {
  "lervag/wiki.vim",
  name = "wiki",
  event = "BufEnter *.md",
  lazy = true,
  ft = { "wiki", "md", "markdown" },
  init = function()
    -- Set wiki root directory
    vim.g.wiki_root = "~/wiki"

    -- Basic configuration
    vim.g.wiki_filetypes = { "md" } -- Use markdown files
    vim.g.wiki_link_target_type = "md"

    -- Enable link creation and following
    vim.g.wiki_mappings_use_defaults = 1
    vim.g.wiki_map_create_page = 1

    -- Link settings
    vim.g.wiki_link_extension = ".md"
    vim.g.wiki_link_target_type = "md"
  end,
}
