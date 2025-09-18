return {
  "L3MON4D3/LuaSnip",
  config = function()
    local luasnip = require("luasnip")

    -- 支持 vscode 格式的 snippets
    require("luasnip.loaders.from_vscode").lazy_load({
      paths = {
        vim.fn.expand("~/.config/nvim/snippets"),
      },
    })
  end,
}
