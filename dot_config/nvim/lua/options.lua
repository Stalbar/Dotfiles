vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.relativenumber = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.number = true
opt.autoindent = true
opt.autoread = true
opt.copyindent = true
opt.cursorline = true
opt.smartindent = true
opt.smarttab = true
opt.splitright = true
opt.termguicolors = true
opt.wrap = false
opt.laststatus = 3
opt.signcolumn = "yes"
opt.cmdheight = 0
opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
opt.swapfile = false
opt.ignorecase = true
opt.smartcase = true
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.mouse = ""
