local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap



keymap("n", "rr", ":lua code_runner()<CR>",opts)
function code_runner()
    vim.cmd "w"

    vim.cmd "sp"
    if vim.o.filetype == 'lua' then
       print(vim.o.filetype)

    elseif vim.o.filetype == 'java' then
        vim.cmd '!javac % && java %<'

    elseif vim.o.filetype == 'python' then
        vim.cmd '!python %'
    end
end

