return {
  --python repl setting
  {
    "ACupofAir/nvim-repl",
    init = function()
      vim.g["repl_filetype_commands"] = { javascript = "node", python = "ipython --no-autoindent" }
    end,
    keys = {
      { "<leader>rt", "<cmd>ReplToggle<cr>", desc = "Toggle nvim-repl" },
      { "<leader>rc", "<cmd>ReplRunCell<cr>", desc = "nvim-repl run cell" },
    },
  },

  -- python env selector configs
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    opts = {
      search = false,
      anaconda_base_path = "C:\\Users\\june\\miniconda3",
      anaconda_envs_path = "C:\\Users\\june\\miniconda3\\envs",
      keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
    },
  },
}
