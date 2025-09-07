return {
  "img-paste-devs/img-paste.vim",
  ft = { "markdown", "tex" },
  vscode = true,
  config = function()
    vim.g.mdip_imgdir = "res"
    vim.g.mdip_imgdir_intext = "res"
    vim.g.mdip_imgname = "image"

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "tex" },
      callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<leader>p", ":call mdip#MarkdownClipboardImage()<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
