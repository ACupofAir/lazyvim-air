return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      local icons = require("lazyvim.config").icons
      local function modified()
        if vim.bo.modified then
          return ""
        elseif vim.bo.modifiable == false or vim.bo.readonly == true then
          return ""
        end
        return ""
      end
      return {
        options = {
          icons_enabled = true,
          theme = "auto",
          component_separators = { left = "|", right = "" },
          section_separators = { left = "", right = "" },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = {
            "mode",
            {
              modified,
              color = { bg = "#ff966c", fg = "#ffffff" },
            },
          },
          lualine_b = {
            { "branch" },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
            },
          },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },
          lualine_x = {
            "encoding",
            "fileformat",
            "filetype",
          },
          lualine_y = { "location" },
          lualine_z = { "progress" },
        },
        inactive_sections = {},
        tabline = {},
        winbar = {
          lualine_a = {
            -- stylua: ignore
            {
              function() return require("nvim-navic").get_location() end,
              cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
            },
          },
        },
        inactive_winbar = {},
        extensions = {},
      }
    end,
  },
}
