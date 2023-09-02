----------------------------------------------------------------------------------------------------
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
----------------------------------------------------------------------------------------------------
-----------------------------==========================================-----------------------------
-----------------------------=    DISABLE DEFAULT CONFLICT KEYMAPS    =-----------------------------
-----------------------------==========================================-----------------------------
----------------------------------------------------------------------------------------------------
-- diable termianl <c-h>
vim.keymap.del("t", "<C-h>")
-- make [<leader> w] to save file
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>w-")

-- keymaps for cgn
local map = vim.api.nvim_set_keymap
map("n", "<leader>rn", "*``cgn", { desc = "Rename same words" })
map("n", "<leader>rn", "#``cgN", { desc = "Rename same words" })

----------------------------------------------------------------------------------------------------
-----------------------------==========================================-----------------------------
-----------------------------=            VSCODE KEYMAPS              =-----------------------------
-----------------------------==========================================-----------------------------
----------------------------------------------------------------------------------------------------
if vim.g.vscode then
  map("n", "<leader>w", "<Cmd>call VSCodeCall('workbench.action.files.save')<CR>", { desc = "Save File" })
  map("n", "<leader>q", "<Cmd>call VSCodeCall('workbench.action.closeActiveEditor')<CR>", { desc = "Close Window" })
  map("n", "<leader>ee", "<Cmd>call VSCodeCall('workbench.view.explorer')<CR>", { desc = "Open Explorer" })
  map(
    "n",
    "<leader>eo",
    "<Cmd>call VSCodeCall('workbench.files.action.showActiveFileInExplorer')<CR>",
    { desc = "Focus File in Explorer" }
  )
  map("n", "<leader>cr", "<Cmd>call VSCodeCall('editor.action.rename')<CR>", { desc = "Rename Symbol Name" })
  map("n", "<leader>cf", "<Cmd>call VSCodeCall('editor.action.formatDocument')<CR>", { desc = "Format Document" })
  map("n", "<leader>co", "<Cmd>call VSCodeCall('outline.focus')<CR>", { desc = "Show Code Outline" })
  map("n", "<leader>ss", "<Cmd>call VSCodeCall('workbench.action.gotoSymbol')<CR>", { desc = "Search Symbol" })
  map("n", "<leader>gp", "<Cmd>call VSCodeCall('editor.action.dirtydiff.next')<CR>", { desc = "Preview Git Hunk" })
  map("n", "[g", "<Cmd>call VSCodeCall('workbench.action.editor.previousChange')<CR>", { desc = "Previous Git Change" })
  map("n", "]g", "<Cmd>call VSCodeCall('workbench.action.editor.nextChange')<CR>", { desc = "Next Git Change" })
  map("n", "[d", "<Cmd>call VSCodeCall('editor.action.marker.prev')<CR>", { desc = "Previous Warning, Error" })
  map("n", "]d", "<Cmd>call VSCodeCall('editor.action.marker.next')<CR>", { desc = "Next Warning, Error" })
  map("n", "<S-h>", "<Cmd>call VSCodeCall('workbench.action.previousEditor')<CR>", { desc = "Go to Previous Editor" })
  map("n", "<S-l>", "<Cmd>call VSCodeCall('workbench.action.nextEditor')<CR>", { desc = "Go to Next Editor" })
else
  ----------------------------------------------------------------------------------------------------
  -----------------------------==========================================-----------------------------
  -----------------------------=            NEOVIM KEYMAPS              =-----------------------------
  -----------------------------==========================================-----------------------------
  ----------------------------------------------------------------------------------------------------
  -- make [<leader> q] to quit windows
  vim.keymap.del("n", "<leader>qq")
  vim.keymap.del("n", "<leader>ql")
  vim.keymap.del("n", "<leader>qd")
  vim.keymap.del("n", "<leader>qs")
  map("n", "<leader>q", "<Cmd>:q<CR>", { desc = "Quit Winodw" })
  map("n", "<leader>w", "<Cmd>:w<CR>", { desc = "Save File" })
  map("n", "<leader>fd", "<cmd>cd %:p:h<cr>", { desc = "Go to the current file directory" })
end
