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

vim.opt.grepprg = 'internal'
vim.opt.exrc = true

vim.g.python3_host_prog = '/home/emilio/utils/venvs/pynvim/bin/python'
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.c_syntax_for_h = 1

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('ca', 'Ls', '!ls')
vim.keymap.set('ia', '#i', '#include')
vim.keymap.set('n', '<C-S>s', function() vim.treesitter.stop(vim.api.nvim_win_get_buf(0)) end)

-- treesitter
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'c', 'make', 'lua', 'asm' },
    callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- vim.o.foldenable = false
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.o.foldmethod = 'expr'
        -- vim.o.foldcolumn = 'auto:3'
        -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.api.nvim_set_hl(0, '@variable', { fg = '#ffffff' })
        vim.api.nvim_set_hl(0, '@variable.parameter', { fg = '#ff8787'})
    end,
})

-- filetype
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'asm' },
    callback = function()
        vim.o.expandtab = false
    end,
})

-- oil
require("oil").setup({
    columns = {
        {"permissions", highlight = "Type"},
        {"size", highlight = "Constant"},
    },
    view_options = {
        show_hidden = true,
    },
})

-- harpoon
-- can see args list with :ar[gs]
-- can use [a and ]a to move betwee arguments with default key binds
vim.keymap.set('ca', 'aa', 'arga')
vim.keymap.set('ca', 'ad', 'argd')
vim.keymap.set('ca', 'ae', 'argded')

