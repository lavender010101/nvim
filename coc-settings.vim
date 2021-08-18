" ===
" ==== install extensions
" ===
" >>>>> auto download extensions >>>>>
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-java',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-python',
	\ 'coc-pyright',
	\ 'coc-sh',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-syntax',
	\ 'coc-tailwindcss',
	\ 'coc-translator',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank',
	\]
	" \ 'https://github.com/rodrigore/coc-tailwind-intellisense'
	" \ 'coc-git',
	" \ 'coc-eslint',
	" \ 'coc-flutter-tools',
	" \ 'coc-prisma',
	" \ 'coc-pyright',
	" \ 'coc-sh',
	" \ 'coc-stylelint',
	" \ 'coc-tailwindcss',
	" \ 'coc-tasks',
	" \ 'coc-tslint-plugin',
	
" <<<<< global extensions









" ===
" ==== default
" ===
" >>>>> completio >>>>>
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" use <CR> to insert the selected completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                            \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" <<<<< completion

" >>>>> code navigation >>>>>
" jump to functions' definition, references and implementation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" <<<<< code navigation <<<<<

" >>>>> rename >>>>>
nmap <leader>rn <Plug>(coc-rename)
" <<<<< rename <<<<<

" >>>>> file explorer >>>>>
nmap tt :CocCommand explorer<CR>
nmap ef :CocCommand explorer --preset floating<CR>
" <<<<< file explorer <<<<<




" ===
" === coc-diagnostic
" ===
" jump to the bug area
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)


" ===
" ==== coc-snippets
" ===
imap <C-u> <Plug>(coc-snippets-expand)
vmap <C-k> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-k>'
let g:coc_snippet_prev = '<c-j>'
imap <C-k> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'lavender010101'


" ===
" ==== coc-translator
" ===
nmap ts <Plug>(coc-translator-p)
