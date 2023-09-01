return {
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    opts = {
      position = "right",
      relative_width = true,
      width = 20,
    },
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
}
