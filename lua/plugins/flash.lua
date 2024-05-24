return {
  {
    "folke/flash.nvim",
    keys = {
      -- disable the default flash keymap
      { "s", mode = { "n", "x", "o" }, false },
      {
        "f",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
    opts = {
      modes = {
        char = {
          enabled = false,
          highlight = { backdrop = false },
        },
        search = {
          enabled = false,
        },
      },
    },
  },
}
