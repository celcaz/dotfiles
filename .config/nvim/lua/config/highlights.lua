vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "CmpItemSel", {
      bg = "#3e4452",
    })

    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {
      fg = "#61afef",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {
      fg = "#61afef",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "CmpItemKind", {
      fg = "#c678dd",
    })
  end,
})
