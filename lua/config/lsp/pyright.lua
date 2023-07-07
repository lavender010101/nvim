return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'pyright'
		})
		lspconfig.pyright.setup({
			on_attach = function()
			end,
		})
	end
}
