return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'tsserver',
			'eslint',
		})
		lspconfig.tsserver.setup({
			on_attach = function()
			end,
		})
	end
}
