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

vim.opt.guicursor = ''

vim.opt.listchars = 'trail:*,leadmultispace:·   ,tab:· ·'
vim.opt.list = true

vim.opt.autowrite = true
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.wildoptions = ''

vim.g.python3_host_prog = '/home/emilio/utils/venvs/pynvim/bin/python'
vim.g.loaded_node_provider = 0;
vim.g.loaded_perl_provider = 0;
vim.g.loaded_ruby_provider = 0;

vim.g.c_syntax_for_h = 1

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('v', ';', ':')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<C-J>', '<C-D>')
vim.keymap.set('n', '<C-K>', '<C-U>')

if vim.fn.filereadable('Session.vim') == 1 then
    vim.cmd.source('Session.vim')
end

vim.keymap.set('n', '<C-S>s', function() vim.treesitter.stop(vim.api.nvim_win_get_buf(0)) end)
