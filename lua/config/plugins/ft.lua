return {
	{
		"dart-lang/dart-vim-plugin",
		ft = "dart",
		config = function()
			vim.g.dart_corelib_highlight = false
			vim.g.dart_format_on_save = false
		end
	},
	{
		'cameron-wags/rainbow_csv.nvim',
		config = function()
			require 'rainbow_csv'.setup()
		end,
		-- optional lazy-loading below
		module = {
			'rainbow_csv',
			'rainbow_csv.fns'
		},
		ft = {
			'csv',
			'tsv',
			'csv_semicolon',
			'csv_whitespace',
			'csv_pipe',
			'rfc_csv',
			'rfc_semicolon'
		}
	}
}
