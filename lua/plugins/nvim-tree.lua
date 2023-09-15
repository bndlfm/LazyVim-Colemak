return {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- remove a default
      vim.keymap.del("n", "u", { buffer = bufnr })
      vim.keymap.del("n", "u", { buffer = bufnr })

      -- override a default
      --- vim.keymap.set('n', '<C-e>', api.tree.reload,                       opts('Refresh'))

      -- add your mappings
      vim.keymap.set("n", "u", api.node.navigate.sibling.last)
    end

    require("nvim-tree").setup({
      on_attach = my_on_attach,
    })
  end,
}
