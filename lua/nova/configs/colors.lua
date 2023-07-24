local poi_status_ok, poi = pcall(require, 'poimandres')
if not poi_status_ok then
	print '[Warning] poimandres is not installed!'
end

local tokyo_status_ok, tokyo = pcall(require, 'tokyonight')
if not tokyo_status_ok then
	print '[Warning] tokyo night is not installed!'
end

tokyo.setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "terminal", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

})

poi.setup {
	bold_vert_split = false, -- use bold vertical separators
  dim_nc_background = true, -- dim 'non-current' window backgrounds
  disable_background = true, -- disable background
  disable_float_background = true, -- disable background for floats
  disable_italics = false, -- disable italics
}

vim.cmd('colorscheme poimandres')

