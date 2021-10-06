" ######################################
" ########## Global Configure ##########
" ######################################
" >>>>> global extensions >>>>>
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-gitignore',
	\ 'coc-go',
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
	" \ 'coc-eslint',
	" \ 'coc-git',
	" \ 'coc-flutter-tools',
	" \ 'coc-prisma',
	" \ 'coc-pyright',
	" \ 'coc-sh',
	" \ 'coc-stylelint',
	" \ 'coc-tailwindcss',
	" \ 'coc-tasks',
	" \ 'coc-tslint-plugin',
" <<<<< global extensions <<<<<

" >>>>> completion settings >>>>>
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" use <CR> to insert the selected completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                            \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" <<<<< completion settings <<<<<


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
nmap ef :CocCommand explorer --preset custom<CR>

let g:coc_explorer_global_presets = {
	\ 'custom': {
		\ 'source': [{
			\ 'name': 'buffer',
			\ 'expand': v:true
			\ }
		\ ],
		\ 'width': 26,
		\ 'position':'left',
		\ 'open-action-strategy':'sourceWindow',
		\ 'file-child-template':'[modified] [selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
	\ }
	\}


" <<<<< file explorer <<<<<




" ===
" ==== coc-diagnostic
" ===
" jump to the bug area
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)


" ===
" ==== coc-snippets
" ===
imap <C-u> <Plug>(coc-snippets-expand)
vmap <C-i> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'lavender010101'


" ===
" ==== coc-translator
" ===
" popup
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)
" nmap tsp <Plug>(coc-translator-p)
" vmap tsp <Plug>(coc-translator-pv)
" " echo
" nmap tse <Plug>(coc-translator-e)
" vmap tse <Plug>(coc-translator-ev)
" " replace
" nmap tsr <Plug>(coc-translator-r)
" vmap tsr <Plug>(coc-translator-rv)


" ===
" ==== coc-prettier
" ===
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-f> :CocCommand prettier.formatFile<CR>
