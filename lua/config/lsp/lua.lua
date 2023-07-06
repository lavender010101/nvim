return {
	setup = function(lspconfig, lsp)
		require("neodev").setup({
			lspconfig = true,
			override = function()
			end
		})
		lspconfig.lua_ls.setup({
			on_attach = function()
			end,
			settings = {
				Lua = {
					diagnostics = {
						globals = {
							'vim',
							'require'
						},
					},
					workspace = {
						checkThirdParty = false,
						ignoreDir = {
							'.vscode',
							'.git'
						},
					},
					completion = {
						callSnippet = "Replace"
					}
				}
			}
		})
	end
}
