-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Highlight groups to make transparent
local groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "FloatTitle",
  "FloatFooter",
  "SignColumn",
  "EndOfBuffer",
  "LineNr",
  "CursorLineNr",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineSel",
  "TabLineFill",
  "ColorColumn",
  "FoldColumn",
  "Cursor",
  "CursorColumn",
  "CursorLine",
  "PMenu",
  "PMenuSel",
  "NvimTreeNormal",
  "NvimTreeRootFolder",
  "NvimTreeStatusLine",
}

local function make_transparent()
  for _, g in ipairs(groups) do
    vim.api.nvim_set_hl(0, g, { bg = "NONE" })
  end
  -- making sure EndOfBuffer doesn't draw weird background markers
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "NONE", bg = "NONE" })
end

make_transparent()

-- Re-apply automatically when the colorscheme is (re)loaded
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = make_transparent,
})
