return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'gopls'
		})
		lspconfig.gopls.setup({
			on_attach = function()
			end,
		})
	end
}
