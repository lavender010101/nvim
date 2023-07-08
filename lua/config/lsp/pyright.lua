return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'pyright',
			'black'
		})
		require("config.lsp.null_ls")
		lspconfig.pyright.setup({
			on_attach = function()
			end,
		})
	end
}
