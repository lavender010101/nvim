require("conform").setup({
	formatters_by_ft = {
		c = { "clang_format" },
		go = { "goimports", "gofumpt" },
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
		-- python = {
		-- 	formatters = { "isort", "black" },
		-- 	-- Run formatters one after another instead of stopping at the first success
		-- 	-- run_all_formatters = true,
		-- 	run_all_formatters = false,
		-- },
		python = function(bufnr)
			if require("conform").get_formatter_info("ruff_format", bufnr).available then
				return { "ruff_format" }
			else
				return { "isort", "black" }
			end
		end,
		zig = { "zigfmt" },
		markdown = {
			"prettierd",
		},
		-- Use the "*" filetype to run formatters on all filetypes.
		["*"] = { "codespell" },
		-- Use the "_" filetype to run formatters on filetypes that don't
		-- have other formatters configured.
		["_"] = { "trim_whitespace" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
