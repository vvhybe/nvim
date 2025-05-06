-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Auto commands
local autocmd = vim.api.nvim_create_autocmd

-- Pre Generate Mermaid Diagrams In Markdown
autocmd("BufWritePost", {
  pattern = "*.md",
  callback = function()
    vim.fn.system("mmdc -i " .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r") .. ".png")
  end,
})

-- Wiki link handling
autocmd("FileType", {
  pattern = { "markdown", "wiki" },
  callback = function()
    vim.opt.spell = true
    vim.opt.spelllang = "en_us"
    -- Map Enter to follow/create wiki links
    vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "<Plug>(wiki-link-follow)", { silent = true })
    -- Map backspace to go back
    vim.api.nvim_buf_set_keymap(0, "n", "<BS>", "<Plug>(wiki-link-return)", { silent = true })
  end,
})
