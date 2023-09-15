vim.o.autochdir = true
vim.o.secure = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.autoindent = true
vim.o.list = true
vim.o.listchars = "tab:| ,trail:▫"
vim.o.scrolloff = 4
vim.o.ttimeoutlen = 0
vim.o.timeout = true
vim.o.viewoptions = "cursor,folds,slash,unix"
vim.o.wrap = true
vim.o.tw = 0
vim.o.indentexpr = ""
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.foldenable = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.showmode = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = "split"
vim.o.completeopt = "longest,noinsert,menuone,noselect,preview"
vim.o.lazyredraw = false
vim.o.visualbell = true
vim.o.colorcolumn = 100
vim.o.updatetime = 100
vim.o.virtualedit = "block"
vim.o.clipboard = "unnamed,unnamedplus"
vim.g.neoterm_autoscroll = 1

vim.cmd([[
  silent !mkdir -p $HOME/.config/nvim/tmp/backup
  silent !mkdir -p $HOME/.config/nvim/tmp/undo
  set backupdir=$HOME/.config/nvim/tmp/backup,.
  set directory=$HOME/.config/nvim/tmp/backup,.
  if has ('persistent_undo' )
    set undofile
    set undodir=$HOME/.config/nvim/tmp/undo,.
  endif
]])

vim.cmd([[
  set formatoptions-=tc
  set shortmess+=c
  let &t_ut=''
]])
