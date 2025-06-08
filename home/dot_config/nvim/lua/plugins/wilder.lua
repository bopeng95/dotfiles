return {
  "gelguy/wilder.nvim",
  dependencies = {
    "romgrk/fzy-lua-native",
  },
  config = function()
    local wilder = require("wilder")

    wilder.setup({ modes = { ":", "/", "?" } })

    wilder.set_option(
      'renderer',
      wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          reverse = 0,
          min_width = "20%", -- minimum height of the popupmenu, can also be a number
          max_height = "15%", -- to set a fixed height, set max_height to the same value
          border = "rounded",
          highlighter = {
            wilder.lua_pcre2_highlighter(), -- requires `luarocks install pcre2`
            wilder.lua_fzy_highlighter(),   -- requires fzy-lua-native vim plugin found
                                            -- at https://github.com/romgrk/fzy-lua-native
          },
          highlights = {
            accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
            border = 'Normal',
          },
        })
      )
    )
  end,
}

