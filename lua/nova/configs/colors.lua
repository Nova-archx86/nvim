local gruvbox_status_ok, gruvbox = pcall(require, 'gruvbox')
if not gruvbox_status_ok then
	print '[Warning] gruvbox is not installed'
end

gruvbox.setup({
	undercurl = true,
  underline = true,
  bold = true,

	italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },

  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,

})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
