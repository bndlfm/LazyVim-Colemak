-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.keymap.set("n", ";", ":", { desc = "rebind ; to :" })

-- ================= GENERAL KEYBINDS =================
--  SAVE/QUIT {{{
vim.keymap.set("n", "Q", "<cmd>q<CR>", { desc = "Q to quit" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "S to write file" })
--}}}

-- NVIM CONFIG SHORTCUTS {{{
vim.keymap.set(
  "n",
  "<leader>rc",
  "<cmd>e $HOME/.config/nvim/lua/config/options.lua<CR>",
  { desc = "Open nvim options.lua" }
)
vim.keymap.set("n", "<leader>rp", "<cmd>e $HOME/.config/nvim/lua/plugins/.<CR>", { desc = "open .nvimrc" })
--}}}

--  UNDO
vim.keymap.set({ "n", "v" }, "l", "u", { desc = "Undo" })

-- INSERT
vim.keymap.set({ "n", "v" }, "k", "i", { desc = "Insert" })
vim.keymap.set({ "n", "v" }, "K", "I", { desc = "Insert" })

-- YANK TO SYSTEM CLIPBOARD
vim.keymap.set("v", "Y", '"+y', { desc = "Copy to Clipboard" })

-- SEARCH {{{
vim.keymap.set("n", ",.", "%", { desc = "Find Pair" })
vim.keymap.set("v", "ki", "$%", { desc = "Find Pair" })
vim.keymap.set("n", "<LEADER><CR>", "<CMD>nohlsearch<CR>", { desc = "clear search highlight" })
--}}}

-- SPACE TO TAB{{{
vim.keymap.set("n", "<LEADER>tt", "<CMD>%s/    /\t/g<CR>", { desc = "space to tab" })
vim.keymap.set("v", "<LEADER>tt", "<CMD>s/    /\t/g<CR>", { desc = "space to tab" })
--}}}

-- MISC {{{
vim.keymap.set("n", "<LEADER>o", "za", { desc = "folding" })
vim.keymap.set("i", "<C-y>", "<ESC>A {}<ESC>i<CR><ESC>ko", { desc = "insert a pair of {} and goto next line" })
--}}}

-- ================= CURSOR MOVEMENT ===================== {{{
-- NEW CURSOR MOVEMENT (ARROW KEY RESIZE WINDOWS)
--      ^
--      u
--  < n   i >
--      e
--      v
--
-- hjkl -> neui
vim.keymap.set({ "n", "v", "", "s", "x" }, "n", "h", { desc = "move left h -> n" })
vim.keymap.set({ "n", "v", "", "s", "x" }, "e", "j", { desc = "move down j -> e" })
vim.keymap.set({ "n", "v", "", "s", "x" }, "u", "k", { desc = "move up k -> u" })
vim.keymap.set({ "n", "v", "", "s", "x" }, "i", "l", { desc = "move left l -> i" })

vim.keymap.set("n", "gu", "gk", { desc = "move up gk -> gu" })
vim.keymap.set("n", "ge", "gj", { desc = "move down gj -> ge" })

vim.keymap.set("n", "\v", "v$h", { desc = "???" })

-- U/E KEYS FOR 5 TIMES u/e (FASTER NAVIGATION)
vim.keymap.set({ "n", "v" }, "U", "5k", { desc = "move 5up K -> U" })
vim.keymap.set({ "n", "v" }, "E", "5j", { desc = "move 5down J -> E" })

-- N/I KEY GO TO THE START/END OF LINE
vim.keymap.set({ "n", "v" }, "N", "0", { desc = "move start of line 0 -> N" })
vim.keymap.set({ "n", "v" }, "I", "$", { desc = "move end of line $ -> I" })

-- FASTER IN-LINE NAVIGATION
vim.keymap.set({ "n", "v" }, "W", "5w", { desc = "5w -> W" })
vim.keymap.set({ "n", "v" }, "B", "5b", { desc = "5b -> B" })

-- SET h (SAME AS n, CURSOR LEFT) TO 'END OF WORD'
vim.keymap.set("n", "h", "e", { desc = "e -> h" })

-- CTRL + U OR E WILL MOVE UP/DOWN THE VIEW PORT WITHOUT MOVING THE CURSOR
vim.keymap.set({ "n", "v" }, "<C-u>", "5<C-y>")
vim.keymap.set({ "n", "v" }, "<C-e>", "5<C-e>")

-- INSERT MODE CURSOR MOVEMENT
vim.keymap.set("i", "<C-a>", "<ESC>A")

-- COMMAND MODE CURSOR MOVEMENT {{{
vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-e>", "<End>")
vim.keymap.set("c", "<C-p>", "<Up>")
vim.keymap.set("c", "<C-n>", "<Down>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<M-b>", "<S-Left>")
vim.keymap.set("c", "<M-w>", "<S-Right>")
-- }}}

-- ================= PANE MANAGMENT ===================== {{{
vim.keymap.set("n", "p", "<NOP>")
vim.keymap.set("n", "pp", "p", { desc = "Paste" })

-- USE <LEADER> + NEW ARROW KEYS FOR MOVING THE CURSOR AROUND PANE
vim.keymap.set(
  "n",
  "<LEADER><UP>",
  "<CMD>set nosplitbelow<CR><CMD>split<CR><CMD>set splitbelow<CR>",
  { desc = "Split ⇧" }
)
vim.keymap.set("n", "<LEADER><DOWN>", "<CMD>set splitbelow<CR><CMD>split<CR>", { desc = "Split ⇩" })
vim.keymap.set(
  "n",
  "<LEADER><LEFT>",
  "<CMD>set nosplitright<CR><CMD>vsplit<CR><CMD>set splitright<CR>",
  { desc = "Split ⇦" }
)
vim.keymap.set("n", "<LEADER><RIGHT>", "<CMD>set splitright<CR><CMD>vsplit<CR>", { desc = "Split ⇨" })

-- DIVIDE SCREEN INTO PANES
vim.keymap.set("n", "pu", "<C-w>k", { desc = "Move cursor to pane ⇧" })
vim.keymap.set("n", "pe", "<C-w>j", { desc = "Move cursor to pane ⇩" })
vim.keymap.set("n", "pn", "<C-w>h", { desc = "Move cursor to pane ⇦" })
vim.keymap.set("n", "pi", "<C-w>l", { desc = "Move cursor to pane ⇨" })
vim.keymap.set("n", "qf", "<C-w>o")

-- RESIZE PANE WITH ARROW KEYS
vim.keymap.set("n", "<up>", "<CMD>res -5<CR>", { desc = "Resize Pane 0,-5" })
vim.keymap.set("n", "<down>", "<CMD>res +5<CR>", { desc = "Resize Pane 0,+5" })
vim.keymap.set("n", "<left>", "<CMD>vertical resize +5<CR>", { desc = "Resize Pane +5,0" })
vim.keymap.set("n", "<right>", "<CMD>vertical resize -5<CR>", { desc = "Resize Pane -5,0" })

-- MAKE PANE VERTICAL/HORIZONTAL
vim.keymap.set("n", "p-", "<C-w>t<C-w>K", { desc = "make splits -" })
vim.keymap.set("n", "p|", "<C-w>t<C-w>H", { desc = "make splits |" })

-- ROTATE PANE
vim.keymap.set("n", "pr-", "<C-w>b<C-w>K", { desc = "Rotate pane to -" })
vim.keymap.set("n", "pr|", "<C-w>b<C-w>H", { desc = "Rotate pane to |" })

-- CLOSE PANE BELOW CURRENT
vim.keymap.set("n", "<LEADER>q", "<C-w>j<CMD>q<CR>")
--}}}

-- TAB MANAGEMENT {{{
-- CREATE NEW TAB WITH tu
--vim.keymap.set("n", "tu", "<CMD>tabe<CR>")
-- CREATE NEW TAB FROM CURRENT WITH tU
--vim.keymap.set("n", "tU", "<CMD>tab split<CR>")

-- SELECT CURRENT TAB WITH tn AND ti
vim.keymap.set("n", "<TAB>n", "<CMD>-tabnext<CR>", { desc = "" })
vim.keymap.set("n", "<TAB>i", "<CMD>+tabnext<CR>", { desc = "" })

-- MOVE TAB ORDER
vim.keymap.set("n", "<TAB>>", "<CMD>-tabmove<CR>", { desc = "Tab move ⇦" })
vim.keymap.set("n", "<TAB><", "<CMD>+tabmove<CR>", { desc = "Tab move ⇨" })

-- vim.keymap.set('n', '<LEADER>dw', '/\(\<\w\+\>\)\_s*\1', {desc='adjacent duplicate words'})

-- =================== TERM BEHAVIORS ====================
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>", { desc = "escape terminal, allowing excmds" })
vim.keymap.set("t", "<C-o>", "<C-\\><C-n><C-o>", { desc = "close terminal" })

-- vim: set fdm=marker
