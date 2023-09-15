return {
  "kdheepak/lazygit.nvim",
  keys = {
    vim.keymap.set("n", "<C-g>", ":LazyGit<CR>", { desc = "LazyGit" }),
  },
  config = function()
    vim.g.lazygit_floating_window_winblend = 0
    vim.g.lazygit_floating_window_scaling_factor = 1.0
    vim.g.lazygit_floating_window_border_chars = "['╭', '╮', '╰', '╯']"
    vim.g.lazygit_use_neovim_remote = 1
  end,
}
