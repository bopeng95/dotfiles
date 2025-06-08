return {
  -- NOTE: catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "mocha",
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

