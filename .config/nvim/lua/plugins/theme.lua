return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        treesitter = true,
        native_lsp = { enabled = true },
        cmp = true, -- 🔥 importante
      },
    })

    vim.cmd.colorscheme("catppuccin")

    -- 🎨 Customização do nvim-cmp
    local colors = require("catppuccin.palettes").get_palette("mocha")

    vim.api.nvim_set_hl(0, "CmpItemSel", {
      bg = colors.surface0,
    })

    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {
      fg = colors.blue,
      bold = true,
    })

    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {
      fg = colors.blue,
      bold = true,
    })

    vim.api.nvim_set_hl(0, "CmpItemKind", {
      fg = colors.mauve,
    })
  end,
}


