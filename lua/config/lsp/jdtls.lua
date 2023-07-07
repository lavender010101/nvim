return {
	setup = function(lspconfig, lsp)
		lsp.ensure_installed({
			'jdtls',
		})
		lspconfig.jdtls.setup({
			on_attach = function()
			end,
			root_dir = function(fname)
				return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
			end,
			-- init_options = {
			-- 	workspace = '$HOME/Documents/Projects/jdtls'
			-- }
		})
	end
}
