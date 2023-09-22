return {
  "I60R/page",
  enabled = false,
  event = "VeryLazy",
  config = function()
    vim.g.page_popup_winblend = 25

    -- # String that will append to buffer name
    vim.g.page_icon_pipe = "|" -- When piped
    vim.g.page_icon_redirect = ">" -- When exposes pty device
    vim.g.page_icon_instance = "$" -- When `-i, -I` flags provided

    -- # Will run once when output buffer is created
    -- vim.api.nvim_create_autocmd("User", {
    --   pattern = "PageOpen",
    --   callback = lua_function,
    -- })
    -- # Will run once when file buffer is created
    -- vim.api.nvim_create_autocmd("User", {
    --   pattern = "PageOpenFile",
    --   callback = lua_function,
    -- })

    -- ###############
    -- ### with -c ###
    -- ###############
    -- # Will run always when output buffer is created
    -- # and also when `page` connects to instance `-i, -I` buffers:
    --vim.api.nvim_create_autocmd("User", {
    --  pattern = "PageConnect",
    --  callback = lua_function,
    --})

    -- # Will run when page process exits
    --vim.api.nvim_create_autocmd("User", {
    --  pattern = "PageDisconnect",
    --  callback = lua_function,
    --})
  end,
}
