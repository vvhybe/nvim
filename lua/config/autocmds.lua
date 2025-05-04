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
    -- Map Enter to follow/create wiki links
    vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "<Plug>(wiki-link-follow)", { silent = true })
    -- Map backspace to go back
    vim.api.nvim_buf_set_keymap(0, "n", "<BS>", "<Plug>(wiki-link-return)", { silent = true })
  end,
})

-- delay cmp completion workaround
-- taken from https://github.com/hrsh7th/nvim-cmp/issues/715
-- local timer = nil
-- local DELAY = 500
-- autocmd({ "TextChangedI", "CmdlineChanged" }, {
--   pattern = "*",
--   callback = function()
--     if timer then
--       vim.loop.timer_stop(timer)
--       timer = nil
--     end
--
--     timer = vim.loop.new_timer()
--     timer:start(
--       DELAY,
--       0,
--       vim.schedule_wrap(function()
--         require("cmp").complete({ reason = require("cmp").ContextReason.Auto })
--       end)
--     )
--   end,
-- })
