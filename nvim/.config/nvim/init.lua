-- leader PRECISA vir antes de tudo
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

require("core.options")
require("core.keymaps")
require("core.autocmds")

