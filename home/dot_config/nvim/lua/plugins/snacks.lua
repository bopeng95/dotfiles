return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      indent = { enabled = true },
      dashboard = { enabled = true },
    },
    keys = {
      -- NOTE: lazy git
      { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
      { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit Logs" },
      -- NOTE: renaming
      { "<leader>rn", function() require("snacks").rename.rename_file() end, desc = "Fast Rename Current File" },
      -- NOTE: buffers
      { "<leader>bd", function() require("snacks").bufdelete() end, desc = "Delete or Close Buffer (Confirm)" },
      { "<leader>ba", function() require("snacks").bufdelete.all() end, desc = "Delete or Close all Buffers (Confirm)" },
      { "<leader>bo", function() require("snacks").bufdelete.other() end, desc = "Delete or Close other Buffers (Confirm)" },
    },
  },
  -- NOTE: todo comments w/ snacks
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    optional = true,
    keys = {
      { "<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "Todo" },
      { "<leader>pT", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "Todo/Fix/Fixme" },
    },
 }
}

