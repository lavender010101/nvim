return {
	{
		'nvim-tree/nvim-tree.lua',
		config = function()
			vim.keymap.set("n", "tt", ":NvimTreeToggle<CR>", { noremap = true })
			local function my_on_attach(bufnr)
				local api = require "nvim-tree.api"

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- default mappings
				-- api.config.mappings.default_on_attach(bufnr)

				-- custom mappings
				vim.keymap.set('n', 'h', api.tree.change_root_to_parent, opts('Up'))
				vim.keymap.set('n', 'j', api.node.navigate.sibling.next, opts('Next Sibling'))
				vim.keymap.set('n', 'k', api.node.navigate.sibling.prev, opts('Prev Sibling'))
				vim.keymap.set('n', 'l', api.tree.change_root_to_node, opts('CD'))
				vim.keymap.set('n', 'gg', api.node.navigate.sibling.first, opts('First Sibling'))
				vim.keymap.set('n', 'G', api.node.navigate.sibling.last, opts('Last Sibling'))
				vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
				vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
				vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
				vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
				vim.keymap.set('n', 've', api.node.open.vertical, opts('Open: Vertial Split'))
				vim.keymap.set('n', 'e', api.node.open.horizontal, opts('Open: Horizontal Split'))
				vim.keymap.set('n', '<TAB>', api.node.open.preview, opts('Open Preview'))
				vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))


				vim.keymap.set('n', 'xx', api.fs.cut, opts('Cut'))
				vim.keymap.set('n', 'yy', api.fs.copy.node, opts('Copy'))
				vim.keymap.set('n', 'yn', api.fs.copy.filename, opts('Copy Name'))
				vim.keymap.set('n', 'yp', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
				vim.keymap.set('n', 'pp', api.fs.paste, opts('Paste'))
				vim.keymap.set('n', 'rn', api.fs.rename_basename, opts('Rename: Basename'))
				vim.keymap.set('n', 'ran', api.fs.rename, opts('Rename'))
				vim.keymap.set('n', 'O', api.tree.collapse_all, opts('Collapse'))
				vim.keymap.set('n', 'E', api.tree.expand_all, opts('Expand All'))

				vim.keymap.set('n', 'fs', api.live_filter.start, opts('Filter'))
				vim.keymap.set('n', 'fc', api.live_filter.clear, opts('Clean Filter'))
				vim.keymap.set('n', 'zh', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
				vim.keymap.set('n', 'fh', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
				vim.keymap.set('n', 'fg', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))


				vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
				vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
				vim.keymap.set('n', '<LEADER>h', api.node.show_info_popup, opts('Info'))
			end

			-- pass to setup along with your other options
			require("nvim-tree").setup {
				on_attach = my_on_attach,
			}
		end
	}
}
