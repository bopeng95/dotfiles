return {
  "stevearc/oil.nvim",
  dependencies = {
    { "echasnovski/mini.icons", lazy = false },
  },
  lazy = false,
  opts = {
    default_file_explorer = true,
    keymaps = {
      ["q"] = "actions.close",
    },
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    {
      "-",
      mode = "n",
      function() require("oil").open() end,
      desc = "Open parent directory"
    },
    {
      "<leader>-",
      mode = "n",
      function() require("oil").open_float() end,
      desc = "Open parent directory by floating"
    },
  },
}

