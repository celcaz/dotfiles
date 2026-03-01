local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local general = augroup("GeneralSettings", { clear = true })

-- highlight ao copiar
autocmd("TextYankPost", {
  group = general,
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

-- remover espaços em branco ao salvar
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

