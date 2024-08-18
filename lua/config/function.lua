local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "rr", ":lua code_runner()<CR>", opts)
function code_runner()
	vim.cmd("w")

	vim.cmd("sp")
	if vim.o.filetype == "lua" then
		print(vim.o.filetype)
	elseif vim.o.filetype == "c" then
		vim.cmd("term gcc % -o %< && time ./%<")
	elseif vim.o.filetype == "cpp" then
		vim.cmd("term g++ -std=c++11 % -Wall -o %< && time ./%<")
	elseif vim.o.filetype == "java" then
		vim.cmd("res -5")
		vim.cmd("term javac % && time java %<")
	elseif vim.o.filetype == "python" then
		vim.cmd("term time python %")
	elseif vim.o.filetype == "go" then
		-- vim.cmd("term go build % && time ./%<")
		vim.cmd("term time go run %")
	elseif vim.o.filetype == "sh" then
		vim.cmd("term time sh %")
	end
end
