# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Config

### colorschema: light or dark

- `lua/config/options.lua`: `vim.go.background = "light"`

### LSP Settings:

- Format

  1. install format in `:Mason`
  2. config in `lua/plugins/lsp.lua`: `"stevearc/conform.nvim"`

- Treesitter
  1. config in `lua/plugins/lsp.lua`: `"nvim-treesitter/nvim-treesitter"`
