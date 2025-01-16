return {
  "TobinPalmer/pastify.nvim",
  cmd = { "Pastify", "PastifyAfter" },
  vscode = true,
  config = function()
    require("pastify").setup({
      opts = {
        absolute_path = false,
        apikey = "YOUR API KEY (https://api.imgbb.com/)", -- Needed if you want to save online.
        save = 'local',
        local_path = function()
          return vim.fn.expand("%:p:h") .. "/assets/"
        end,
        filename = function()
          return vim.fn.expand("%:t:r") .. "_" .. os.date("%Y-%m-%d_%H-%M-%S")
        end,
      },
    })
  end,
}
