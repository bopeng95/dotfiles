return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    {
      "<c-h>",
      function()
        require("tmux-navigator").navigate("left")
      end,
      mode = { "n", "i", "v", "s" },
    },
    {
      "<c-j>",
      function()
        require("tmux-navigator").navigate("down")
      end,
      mode = { "n", "i", "v", "s" },
    },
    {
      "<c-k>",
      function()
        require("tmux-navigator").navigate("up")
      end,
      mode = { "n", "i", "v", "s" },
    },
    {
      "<c-l>",
      function()
        require("tmux-navigator").navigate("right")
      end,
      mode = { "n", "i", "v", "s" },
    },
    {
      "<c-\\>",
      function()
        require("tmux-navigator").navigate("previous")
      end,
      mode = { "n", "i", "v", "s" },
    },
  },
  config = function()
    -- This is important to prevent Neovim's default keymaps from conflicting
    -- with the tmux navigation keymaps when in a tmux session.
    vim.g.tmux_navigator_no_mappings = 1
  end,
}
