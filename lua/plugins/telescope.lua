return {
	{
			'nvim-telescope/telescope.nvim', version = '*',
			dependencies = {
				'nvim-lua/plenary.nvim',
				{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			},
		config = function()
			local ts = require('telescope.builtin')
			vim.keymap.set('n', '<leader>F', ts.live_grep, { desc = 'Telescope live grep global search' })
			vim.keymap.set('n', '<leader>b', ts.buffers, { desc = 'Telescope search open buffers' })
			vim.keymap.set('n', '<C-p>', ts.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>td', function() ts.diagnostics({bufnr = 0}) end, { desc = 'Telescope show diagnostics' })
			vim.keymap.set('n', '<leader>tD', ts.diagnostics, { desc = 'Telescope show global diagnostics' })
			vim.keymap.set('n', '<leader>ts', ts.lsp_document_symbols, { desc = 'Telescope symbols in the current document' })
			vim.keymap.set('n', '<leader>tr', ts.lsp_references, { desc = 'Telescope references for the word under the cursor' })
		end
	}
}
