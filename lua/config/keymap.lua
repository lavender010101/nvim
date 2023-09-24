vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	-- option
	{ from = "Y",     to = "\"+y",  mode = mode_v },

	-- movement
	{ from = "H",     to = "5h",    mode = mode_nv },
	{ from = "J",     to = "5j",    mode = mode_nv },
	{ from = "K",     to = "5k",    mode = mode_nv },
	{ from = "L",     to = "5l",    mode = mode_nv },
	{ from = "W",     to = "5w",    mode = mode_nv },
	{ from = "B",     to = "5b",    mode = mode_nv },
	{ from = ";",     to = "0",     mode = mode_nv },
	{ from = "\'\'",  to = "$",     mode = mode_nv },

	-- windows and split
	{ from = "<C-w>", to = "<C-w>w" },
	{ from = "<C-h>", to = "<C-w>h" },
	{ from = "<C-j>", to = "<C-w>j" },
	{ from = "<C-k>", to = "<C-w>k" },
	{ from = "<C-l>", to = "<C-w>l" },
	{ from = "s",     to = "<nop>" },
}




-- setup keymap
for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end
