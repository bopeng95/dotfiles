return {
  -- NOTE: vague
  {
    "vague-theme/vague.nvim",
    name = "vague",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("vague")
    end,
  },
  -- NOTE: catppuccin
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha",
  --   },
  -- config = function()
  --   vim.cmd.colorscheme("catppuccin")
  -- end,
  -- },
  -- NOTE:kanagawa
  -- {
  --   "rebelot/kanagawa.nvim",
  --   name = "kanagawa",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("kanagawa-dragon")
  --   end,
  -- },
}
