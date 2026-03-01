-- leader PRECISA vir antes de tudo
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

require("config.lazy")
require("config.highlights")

require("core.options")
require("core.keymaps")
require("core.autocmds")
