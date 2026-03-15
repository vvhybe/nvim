-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- lua/config/options.lua
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Sync clipboard with OS
vim.opt.clipboard = "unnamedplus"

-- CLIPBOARD NOTE: Handle WSL, Windows, and Linux specifically
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
elseif vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  -- Windows native
  vim.opt.clipboard = "unnamedplus"
elseif vim.fn.executable("xclip") == 1 then
  -- Linux with xclip
  vim.opt.clipboard = "unnamedplus"
elseif vim.fn.executable("wl-copy") == 1 then
  -- Wayland
  vim.opt.clipboard = "unnamedplus"
end

-- Fix encodings
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- UI Basics
vim.opt.number = true
vim.opt.relativenumber = true
