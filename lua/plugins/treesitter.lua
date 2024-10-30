return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = not vim.g.vscode },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-k>",
        node_incremental = "<C-k>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}

