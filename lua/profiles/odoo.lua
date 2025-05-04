return {
  setup = function()
    -- Profile-specific keybindings
    vim.api.nvim_set_keymap("n", "<leader>p2", ":echo 'Profile 2'<CR>", { noremap = true, silent = true })

    -- Profile-specific settings
    vim.opt.number = false
    vim.opt.relativenumber = true

    -- Profile-specific plugins
    require("lazy").setup({
      { "catppuccin/nvim" }, -- Example plugin for Profile 2
    })
  end,
}
