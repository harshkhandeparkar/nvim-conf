return {
	{
		'neovim/nvim-lspconfig',
        dependencies = {
            -- { "ms-jpq/coq_nvim", branch = "coq" },
            {
                "smjonas/inc-rename.nvim",
                opts = {
					preview_empty_name = true
				}
            },
			{ "rhaiscript/vim-rhai" } -- For ewwii rhai (NOT an LSP)
        },
        init = function()
            -- vim.g.coq_settings = {
            --     auto_start = true,
            --     display = { pum = { fast_close = false } },
            --     keymap = { pre_select = true }
            -- }
            --
            -- vim.keymap.set(
            --     'i', '<Tab>',
            --     [[pumvisible() ? "\<CR>" : "\<Tab>"]],
            --     { expr = true, silent = true, desc = "Tab for selecting completion" }
            -- )
        end,
		config = function()
            vim.lsp.config('rust_analyzer', {
                settings = {
                    ['rust-analyzer'] = {
                        checkOnSave = {
                            enable = true,
                            command = 'clippy',
                        }
                    }
                }
            })

			vim.lsp.enable("rust_analyzer")

			-- Format on save for Rust files
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.rs",
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})

			vim.lsp.enable("ts_ls")
			vim.lsp.enable("lua_ls")
			-- vim.lsp.enable("ty")
			vim.lsp.enable("pyright")
			vim.lsp.enable("ruff")
			vim.lsp.enable("zls")
			vim.lsp.enable("superhtml")
			vim.lsp.enable("cssls")
			vim.lsp.enable("svelte")
			vim.lsp.enable("clangd")
		end
	}
}
