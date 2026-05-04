return {
  "stevearc/oil.nvim",
  dependencies = {
    { "nvim-mini/mini.icons", lazy = false },
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
    float = {
      override = function(conf)
        conf.width = math.floor(vim.o.columns * 0.8)
        conf.height = math.floor(vim.o.lines * 0.8)
        conf.col = math.floor((vim.o.columns - conf.width) / 2)
        conf.row = math.floor((vim.o.lines - conf.height) / 2)
        return conf
      end,
    },
  },
  keys = {
    {
      "-",
      mode = "n",
      function()
        -- require("oil").open()
        require("oil").open_float()
      end,
      desc = "Open parent directory",
    },
  },
}
