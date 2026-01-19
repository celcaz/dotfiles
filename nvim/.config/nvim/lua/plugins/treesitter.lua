return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  init = function()
    vim.defer_fn(function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        return
      end

      configs.setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "typescript",
          "tsx",
          "html",
          "css",
          "json",
          "bash",
        },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end, 0)
  end,
}


