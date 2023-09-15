return {
  "ibhagwan/fzf-lua",
  enabled = true,
  keys = {
    vim.keymap.set("", "<C-p>", ":FzfLua files<CR>", { desc = "-show files-" }),
    vim.keymap.set("", "<C-f>", ":Rg<CR>", { desc = "ripgrep" }),
  },
}
