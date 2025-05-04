-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local nomap = vim.keymap.del

------ ## EDITOR
---
--- set jk to escape
map("i", "jk", "<Esc>", { noremap = true, silent = true })

--- Telescope Find Files

map("n", "<leader>fp", "<cmd>Telescope find_files<cr>", {
  desc = "Find Plugin File",
})

------ ## GIT
---
--- Diffview
map("n", "<leader>gd", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd("DiffviewOpen")
  else
    vim.cmd("DiffviewClose")
  end
end, {
  desc = "Git Toggle Diffview",
})

--- LAZYGIT

------ ## MARKDOWN
---
--- Markdown preview with glow
map("n", "<leader>mp", ":Glow<CR>", {
  desc = "Markdown Preview with glow",
  noremap = true,
  silent = true,
})

--- WIKI
---
map("n", "<leader>ki", "<cmd>WikiIndex<CR>", { desc = "Wiki Index" })

map("n", "<leader>ksP", "<cmd>WikiPages<CR>", { desc = "Wiki Pages" })
map("n", "<leader>ksp", "<cmd>WikiFzfPages<CR>", { desc = "Wiki Find Pages" })
map("n", "<leader>ksT", "<cmd>WikiTags<CR>", { desc = "Wiki Tags" })
map("n", "<leader>kst", "<cmd>WikiFzfTags<CR>", { desc = "Wiki Find Tags" })
map("n", "<leader>ksc", "<cmd>WikiToc<CR>", { desc = "Wiki Table of Contents" })

map("n", "<leader>kt", "<cmd>WikiTocGenerate<CR>", { desc = "Wiki Generate Table of Contents" })

map("n", "<leader>kd", "<cmd>WikiJournal<CR>", { desc = "Wiki Diary" })
map("n", "<leader>kn", "<cmd>WikiJournalNew<CR>", { desc = "Wiki New Diary" })

map("n", "<leader>kl", "<cmd>WikiLinkIncomingToggle<CR>", { desc = "Wiki Display Incoming Links" })
map("n", "<leader>ke", "<cmd>WikiExport<CR>", { desc = "Wiki Export" })
