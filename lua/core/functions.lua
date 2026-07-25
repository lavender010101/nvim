local opts = { noremap = true, silent = true }

local function code_runner()
  vim.cmd("w")
  vim.cmd("vsp")
  local ft = vim.bo.filetype
  if ft == "lua" then
    print(ft)
  elseif ft == "c" then
    vim.cmd("term gcc % -o %< && time ./%<")
  elseif ft == "cpp" then
    vim.cmd("term g++ -std=c++11 % -Wall -o %< && time ./%<")
  elseif ft == "java" then
    vim.cmd("term javac % && time java %<")
  elseif ft == "python" then
    vim.cmd("term time python %")
  elseif ft == "go" then
    vim.cmd("term time go run %")
  elseif ft == "sh" then
    vim.cmd("term time sh %")
  end
end

vim.keymap.set("n", "rr", code_runner, opts)
