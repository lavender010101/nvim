return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'bashls'
		})
		lspconfig.bashls.setup({
			on_attach = function()
			end,
			filetypes = {
				'sh',
				'zsh'
			},
		})
	end
}
