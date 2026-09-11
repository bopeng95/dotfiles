local function nav(dir)
  local pane = vim.env.HERDR_PANE_ID
  if not pane or pane == "" then
    return require("tmux-navigator").navigate(dir) -- tmux / plain splits
  end

  local wincmd = ({ left = "h", down = "j", up = "k", right = "l" })[dir]
  local prev = vim.api.nvim_get_current_win()
  vim.cmd("wincmd " .. wincmd)
  if vim.api.nvim_get_current_win() ~= prev then
    return
  end

  local herdr = vim.env.HERDR_BIN_PATH
  if not herdr or herdr == "" then
    herdr = "herdr"
  end
  vim.fn.system({ herdr, "pane", "focus", "--direction", dir, "--pane", pane })
end

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
        nav("left")
      end,
    },
    {
      "<c-j>",
      function()
        nav("down")
      end,
    },
    {
      "<c-k>",
      function()
        nav("up")
      end,
    },
    {
      "<c-l>",
      function()
        nav("right")
      end,
    },
    {
      "<c-\\>",
      function()
        require("tmux-navigator").navigate("previous")
      end,
    },
  },
  init = function()
    vim.g.tmux_navigator_no_mappings = 1
  end,
}
