-- nvim 0.12+ config

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.winborder = 'rounded'
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.signcolumn = 'yes:1'
vim.opt.tabstop = 2
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cmdheight = 0

vim.g.mapleader = ' '

vim.pack.add({
	'https://github.com/EdenEast/nightfox.nvim',
	'https://github.com/echasnovski/mini.pick',
	'https://github.com/echasnovski/gitsigns.nvim',
})

vim.lsp.enable({
	'lua_ls',
	'ruby-lsp',
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end
})

vim.diagnostic.config({
	diagnostic = {
		current_line = true
	},
})

vim.cmd.colorscheme('nightfox')

require('mini.pick').setup()
require('gitsigns').setup()

vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fg', ':Pick grep_live<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')
vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')

vim.keymap.set('n', '<leader>-', '<cmd>split<CR>')
vim.keymap.set('n', '<leader>=', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<CR>')

vim.keymap.set('i', '<C-Space>', vim.lsp.completion.get)
vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<Leader>gd', vim.lsp.buf.definition)

vim.keymap.set('n', 'Q', '<nop>')
