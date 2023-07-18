require 'nova.options'
require 'nova.plugins'
require 'nova.configs'
require 'nova.keymaps'

local tokyo_status_ok, tokyo = pcall(require, 'tokyonight')
if not tokyo_status_ok then
	print '[Warning] tokyo night is not installed!'
end

tokyo.setup({})

-- setup must be called before loading
vim.cmd.colorscheme "tokyonight"
