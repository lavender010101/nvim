local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local conform = require("conform")


conform.setup({
	formatters_by_ft = {
		c = { "clang_format" },
		go = {
			formatters = { "gofumpt", "goimports" },
			run_all_formatters = true,
		},
		html = { "prettierd" },
		json = { "prettierd" },
		jsonc = { "prettierd" },
		rust = { "rustfmt" },
		bash = { "shfmt" },
		lua = { "stylua" },
		-- Conform will use the first available formatter in the list
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		vue = { "prettierd" },
		-- Formatters can also be specified with additional options
		python = {
			formatters = { "isort", "black" },
			-- Run formatters one after another instead of stopping at the first success
			run_all_formatters = true,
		},
		zig = { "zigfmt" },
		markdown = {
			"prettierd",
		},
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})

null_ls.setup({
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })

			-- null-ls
			-- vim.api.nvim_create_autocmd("BufWritePre", {
			-- 	group = augroup,
			-- 	buffer = bufnr,
			-- 	callback = function()
			-- 		-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
			-- 		vim.lsp.buf.format({
			-- 			async = false,
			-- 			bufnr = bufnr
			-- 		})
			-- 	end,
			-- })

			-- confrom
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end
	end,
	sources = {
		-- null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.formatting.black,
		-- null_ls.builtins.formatting.black.with({
		-- 	extra_args = {
		-- 		"--fast",
		-- 		"--skip-string-normalization",
		-- 	},
		-- 	filetypes = { "python" }
		-- }),
		-- null_ls.builtins.formatting.deno_fmt, -- will use the source for all supported file types
		-- null_ls.builtins.formatting.deno_fmt.with({
		-- 	filetypes = { "markdown" },       -- only runs `deno fmt` for markdown
		-- }),
	},
})
