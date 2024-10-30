return {
  {
    "keaising/im-select.nvim",
    opts = {
      vscode = true,
    },
    cond = [[vim.g.vscode]],
    config = function()
      require("im_select").setup({
        set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },
        async_switch_im = false,
      })
    end,
  },
}
