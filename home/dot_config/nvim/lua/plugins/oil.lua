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
  },
  keys = {
    {
      "-",
      mode = "n",
      function()
        require("oil").open()
        -- require("oil").open_float()
      end,
      desc = "Open parent directory",
    },
  },
}
