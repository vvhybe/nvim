return {
  -- Shared LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Global capabilities or settings for ALL servers
      inlay_hints = { enabled = true },
      codelens = { enabled = true },
      -- Don't put specific servers here. Put them in their specific lang files.
    },
  },
}
