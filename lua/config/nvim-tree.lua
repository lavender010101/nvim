return {
	{
		'nvim-tree/nvim-tree.lua',
		config = function()
			vim.keymap.set("n", "tt", ":NvimTreeToggle", { noremap = true })




			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1


			local function my_on_attach(bufnr)
				local api = require "nvim-tree.api"

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- default mappings
				-- api.config.mappings.default_on_attach(bufnr)

				-- custom mappings
				vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
				-- movement
				vim.keymap.set('n', 'o', api.node.open.edit, opts('Help'))
				vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Help'))
				vim.keymap.set('n', '<TAB>', api.node.open.preview, opts('Help'))
				vim.keymap.set('n', 'h', api.tree.change_root_to_parent, opts('Help'))
				vim.keymap.set('n', 'j', api.node.navigate.sibling.next, opts('Help'))
				vim.keymap.set('n', 'k', api.node.navigate.sibling.prev, opts('Help'))
				vim.keymap.set('n', 'l', api.tree.change_root_to_node, opts('Help'))


				-- options
				vim.keymap.set('n', 'zh', api.tree.toggle_custom_filter, opts('Help'))
				vim.keymap.set('n', 'sp', api.node.open.horizontal, opts('Help'))
				vim.keymap.set('n', 'vsp', api.node.open.vertical, opts('Help'))
				vim.keymap.set('n', 'dd', api.fs.remove, opts('Help'))
				vim.keymap.set('n', 'dD', api.fs.trash, opts('Help'))
				vim.keymap.set('n', 'rn', api.fs.rename_basename, opts('Help'))
				vim.keymap.set('n', 'yp', api.fs.copy.absolute_path, opts('Help'))
				vim.keymap.set('n', 'xx', api.fs.cut, opts('Help'))
				vim.keymap.set('n', 'f', api.live_filter.start, opts('Help'))
				vim.keymap.set('n', 'F', api.live_filter.clear, opts('Help'))
			end

			-- pass to setup along with your other options
			require("nvim-tree").setup {
				---
				on_attach = my_on_attach,
				---
			}
		end

	}
}
