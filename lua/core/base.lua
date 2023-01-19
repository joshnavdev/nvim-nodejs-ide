local cmd = vim.cmd
local opt = vim.opt

cmd("autocmd!")

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

vim.wo.number = true
vim.o.relativenumber = true

opt.title = true
opt. autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'zsh'
opt.backupskip = { "/tmp/*", "/private/tmp/*" }
opt.inccommand = "split"
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.backspace = { "start", "eol", "indent" }
opt.path:append { "*/node_modules/*", "*/.git/*" }
opt.mouse = nil

-- Undercurl
cmd[[let &t_Cs = "\e[4:3m"]]
cmd[[let &t_Cs = "\e[4:0m"]]

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Add asterisks in block comments
opt.formatoptions:append { "r" }

vim.wo.colorcolumn = "120"

cmd[[au BufReadPost,BufNewFile *.astro setfiletype astro]]
