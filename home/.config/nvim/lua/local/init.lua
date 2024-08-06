-- If you don't set this to dark and onedark style is of the dark group of colors, it will default to light.
vim.opt.background = 'light'

require('onedark').setup {
    style = 'light', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'

    transparent = true,
    term_colors = true,
    ending_tildes = true,

    -- toggle_style_key = '<leader>ts',
    -- toggle_style_list = { 'light', 'dark', 'darker',  'warm', 'warmer', 'cool', 'deep' },
}

require('onedark').load()
-- vim.cmd[[colorscheme onedark]] -- not needed with this plugin
