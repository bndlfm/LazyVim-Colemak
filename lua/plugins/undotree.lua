return {
  {
    "mbbill/undotree",
    event = "VeryLazy",
    keys = {
      { "L", ":UndotreeToggle<CR>", { desc = "Toggle Undotree" } },
    },
    config = function()
      vim.g.undotree_DiffAutoOpen = 1
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_DiffpanelHeight = 8
      vim.g.undotree_SplitWidth = 24
      function vim.g.Undotree_CustomMap()
        vim.api.nvim_buf_set_keymap(0, "n", "u", "<Plug>UndotreeNextState", {})
        vim.api.nvim_buf_set_keymap(0, "n", "e", "<Plug>UndotreePreviousState", {})
        vim.api.nvim_buf_set_keymap(0, "n", "U", "5<Plug>UndotreeNextState", {})
        vim.api.nvim_buf_set_keymap(0, "n", "E", "5<Plug>UndotreePreviousState", {})
      end
    end,
  },
}
