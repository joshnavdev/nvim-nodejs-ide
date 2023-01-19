local keymap = vim.keymap

vim.g.mapleader = " "

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save and Close
keymap.set("n", "<Leader>w", ":w<CR>")
keymap.set("n", "<Leader>q", ":q<CR>")

-- New Tabs
keymap.set("n", "<Leader>te", ":tabedit<CR>")

-- Split Windows
keymap.set("n", "<C-s><C-i>", ":vsplit<CR><C-w>w")
keymap.set("n", "<C-s><C-x>", ":split<CR><C-w>w")

-- Resize Window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Move Tabs
keymap.set("n", "<Leader>1", "1gt")
keymap.set("n", "<Leader>2", "2gt")
keymap.set("n", "<Leader>3", "3gt")
keymap.set("n", "<Leader>4", "4gt")
keymap.set("n", "<Leader>5", "5gt")
keymap.set("n", "<Leader>6", "6gt")
keymap.set("n", "<Leader>7", "7gt")
keymap.set("n", "<Leader>8", "8gt")
keymap.set("n", "<Leader>9", "9gt")
keymap.set("n", "<Leader>0", ":tablast<CR>")

-- Writting improvments maps
keymap.set("i", "<C-e>", "<C-o>$")

-- Reaload NVIM file
keymap.set("n", "<Leader>x", ":w<CR>:source %<CR>")

-- Plenary
keymap.set("n", "<Leader>pt", "<Plug>PlenaryTestFile")
