require("lspconfig").pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "workspace",
			},
		},
	},
})
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "ld", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "lk", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "lu", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "lr", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
