return {
	setup = function(lspconfig, lsp)
		lspconfig.jdtls.setup({
			on_attach = function()
			end,
			-- cmd = {
			-- 	'jdtls'
			-- },
			root_dir = function(fname)
				return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
			end
		})
	end
}
