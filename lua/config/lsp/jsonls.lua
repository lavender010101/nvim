return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'jsonls',
		})
		lspconfig.jsonls.setup({
			on_attach = function()
			end,
		})
	end
}
