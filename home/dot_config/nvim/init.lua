require("config.lazy")
require("config.vim")
require("config.keymaps")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
        { import = "plugins" },
    },
})

