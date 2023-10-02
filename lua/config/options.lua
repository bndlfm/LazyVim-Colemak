vim.o.autoindent = true
vim.o.autochdir = true
vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })
vim.o.colorcolumn = 100
vim.o.completeopt = "longest,noinsert,menuone,noselect,preview"
vim.o.cursorline = true
vim.o.expandtab = true
vim.wo.foldmethod = "marker"
vim.wo.foldlevel = 99
vim.o.foldenable = true
vim.o.inccommand = "split"
vim.o.indentexpr = ""
vim.o.ignorecase = true
vim.o.lazyredraw = false
vim.o.list = true
vim.o.listchars = "tab:| ,trail:▫"
vim.bo.modeline = true
vim.go.modelines = 5
vim.g.neoterm_autoscroll = 1
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 4
vim.o.secure = true
vim.o.shiftwidth = 2
vim.o.showmode = false
vim.o.smartcase = true
vim.o.softtabstop = 2
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tabstop = 2
vim.o.timeout = true
vim.o.ttimeoutlen = 0
vim.o.tw = 0
vim.o.visualbell = true
vim.o.updatetime = 100
vim.o.viewoptions = "cursor,folds,slash,unix"
vim.o.virtualedit = "block"
vim.wo.wrap = true
vim.o.undolevels = 10000
vim.cmd([[
    silent !mkdir -p $home/.config/nvim/tmp/backup
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
