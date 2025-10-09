vim.cmd.colorscheme('deserted')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.listchars = 'trail:*,leadmultispace:·   ,tab:· ·'
vim.opt.list = true

vim.opt.autowrite = true
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.wildoptions = ''

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('v', ';', ':')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<C-J>', '<C-F>')
vim.keymap.set('n', '<C-K>', '<C-B>')
vim.keymap.set('n', '[q', '<Cmd>cprevious<CR>')
vim.keymap.set('n', ']q', '<Cmd>cnext<CR>')
vim.keymap.set('n', '[b', '<Cmd>bprevious<CR>')
vim.keymap.set('n', ']b', '<Cmd>bnext<CR>')

--[[
if filereadable("./Session.vim")
    source Session.vim
endif
--]]

--[[
if has('nvim')
    set viminfo+=n~/.vim/nviminfo
else
    set viminfo+=n~/.vim/viminfo
endif
]]
