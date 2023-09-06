local night_fox_status_ok, night_fox = pcall(require, 'nightfox')
if not night_fox_status_ok then
	print '[Warn] nightfox is not installed'
end

vim.cmd("colorscheme carbonfox")
