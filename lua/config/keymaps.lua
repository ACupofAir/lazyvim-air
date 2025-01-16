----------------------------------------------------------------------------------------------------
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
----------------------------------------------------------------------------------------------------
-----------------------------==========================================-----------------------------
-----------------------------=    DISABLE DEFAULT CONFLICT KEYMAPS    =-----------------------------
-----------------------------==========================================-----------------------------
----------------------------------------------------------------------------------------------------
-- diable termianl <c-h>
-- vim.keymap.del("t", "<C-h>")

----------------------------------------------------------------------------------------------------
-----------------------------==========================================-----------------------------
-----------------------------=            GLOBAL KEYMAPS              =-----------------------------
-----------------------------==========================================-----------------------------
----------------------------------------------------------------------------------------------------
-- keymaps for cgn
local map = vim.api.nvim_set_keymap
map("n", "<leader>rn", "*``cgn", { desc = "Rename same words" })
map("n", "<leader>rn", "#``cgN", { desc = "Rename same words" })
map("n", "<leader>fp", "<Cmd>:echo expand('%p')<CR>", { desc = "Print current file path" })
map("n", "<leader>p", "<Cmd>:Pastify<CR>", { desc = "Paste image" })
----------------------------------------------------------------------------------------------------
-----------------------------==========================================-----------------------------
-----------------------------=            VSCODE KEYMAPS              =-----------------------------
-----------------------------==========================================-----------------------------
----------------------------------------------------------------------------------------------------
if vim.g.vscode then
  map(
    "n",
    "<leader>to",
    "<Cmd>call VSCodeCall('workbench.action.closeEditorsInOtherGroups')<CR>",
    { desc = "Close Other Editor Groups" }
  )
  map("n", "<leader>q", "<Cmd>call VSCodeCall('workbench.action.closeActiveEditor')<CR>", { desc = "Close Window" })
  map("n", "<leader>ee", "<Cmd>call VSCodeCall('workbench.view.explorer')<CR>", { desc = "Open Explorer" })
  map(
    "n",
    "<leader>er",
    "<Cmd>call VSCodeCall('workbench.files.action.refreshFilesExplorer')<CR>",
    { desc = "Refresh Explorer" }
  )
  map(
    "n",
    "<leader>eo",
    "<Cmd>call VSCodeCall('workbench.files.action.showActiveFileInExplorer')<CR>",
    { desc = "Focus File in Explorer" }
  )
  map("n", "<leader>cr", "<Cmd>call VSCodeCall('editor.action.rename')<CR>", { desc = "Rename Symbol Name" })
  map("n", "<leader>cf", "<Cmd>call VSCodeCall('editor.action.formatDocument')<CR>", { desc = "Format Document" })
  map("n", "<leader>cs", "<Cmd>call VSCodeCall('outline.focus')<CR>", { desc = "Show Code Outline" })
  map("n", "<leader>ss", "<Cmd>call VSCodeCall('workbench.action.gotoSymbol')<CR>", { desc = "Search Symbol" })
  map("n", "<leader>gp", "<Cmd>call VSCodeCall('editor.action.dirtydiff.next')<CR>", { desc = "Preview Git Hunk" })
  map("n", "[g", "<Cmd>call VSCodeCall('workbench.action.editor.previousChange')<CR>", { desc = "Previous Git Change" })
  map("n", "]g", "<Cmd>call VSCodeCall('workbench.action.editor.nextChange')<CR>", { desc = "Next Git Change" })
  map("n", "[d", "<Cmd>call VSCodeCall('editor.action.marker.prev')<CR>", { desc = "Previous Warning, Error" })
  map("n", "]d", "<Cmd>call VSCodeCall('editor.action.marker.next')<CR>", { desc = "Next Warning, Error" })
  map("n", "<S-h>", "<Cmd>call VSCodeCall('workbench.action.previousEditor')<CR>", { desc = "Go to Previous Editor" })
  map("n", "<S-l>", "<Cmd>call VSCodeCall('workbench.action.nextEditor')<CR>", { desc = "Go to Next Editor" })
  map("n", "zc", "<Cmd>call VSCodeCall('editor.fold')<CR>", { desc = "Fold" })
  map("n", "zo", "<Cmd>call VSCodeCall('editor.unfold')<CR>", { desc = "Unfold" })
  map("n", "gr", "<Cmd>call VSCodeCall('editor.action.goToReferences')<CR>", { desc = "Go To Reference" })
else
  ----------------------------------------------------------------------------------------------------
  -----------------------------==========================================-----------------------------
  -----------------------------=            NEOVIM KEYMAPS              =-----------------------------
  -----------------------------==========================================-----------------------------
  ----------------------------------------------------------------------------------------------------
  map("n", "<leader>fd", "<cmd>cd %:p:h<cr>", { desc = "Go to the current file directory" })
end
