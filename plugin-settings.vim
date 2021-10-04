" ===
" ==== editor enhance
" ===
" === rainbow ===
let g:rainbow_active = 1

" === xtabline ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1

au BufEnter * exec "call SetBufferName()"
func! SetBufferName()
	let s:file_name=expand('%')
	" let s:file_path=expand('%:p:h:t')
	" let s:buffer_title=s:file_path.'/'.s:file_name
	" call xtabline#cmds#run("name_tab", expand('%:p:h:t'))
	call xtabline#cmds#run("name_tab", s:file_name)
endfunc


" === spaceline.vim ===
let g:spaceline_seperate_style = 'arrow-fade'

" let g:spaceline_colorscheme = 'deus'
let g:spaceline_colorscheme = 'default'

let g:spaceline_lsp_executive = 'coc'
" side bar
let g:spaceline_diff_tool = 'git-gutter'



" ===== vista.vim =====
noremap tg :Vista!!<CR>

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }


" === vim-hexokinase ===
" options: 'virtual' 'sign_column' 'foreground[full]' 'background[full]'
let g:Hexokinase_highlighters = ['backgroundfull']


" === vim-illuminate ===
let g:Illuminate_delay = 750
hi illuminateWord cterm=undercurl gui=undercurl


" === vim-move ===
" let g:move_map_keys = 0
" " let g:move_key_modifier = 'alt'
" " lines
" nmap <A-j> <Plug>MoveLineDown
" nmap <A-k> <Plug>MoveLineUp
" " char
" nmap <A-h> <Plug>MoveCharLeft
" nmap <A-l> <Plug>MoveCharRight
" " code block
" vmap <A-j> <Plug>MoveBlockDown
" vmap <A-k> <Plug>MoveBlockUp
" vmap <A-h> <Plug>MoveBlockLeft
" vmap <A-l> <Plug>MoveBlockRight


" === tcomment_vim ===
nnoremap ci cl
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<



" ===
" ==== files coding enhance
" ===

" " >>>>> code formatter >>>>>
" augroup autoformat_settings
"   autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
"   autocmd FileType dart AutoFormatBuffer dartfmt
"   autocmd FileType go AutoFormatBuffer gofmt
"   autocmd FileType gn AutoFormatBuffer gn
"   autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"   autocmd FileType java AutoFormatBuffer google-java-format
"   autocmd FileType python AutoFormatBuffer yapf
"   " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"   autocmd FileType rust AutoFormatBuffer rustfmt
"   autocmd FileType vue AutoFormatBuffer prettier
" augroup END
" " <<<<< code formatter <<<<<

" >>>>> common text files >>>>>
" === bullet.vim ===
let g:bullets_enabled_file_types = [
	\ 'markdown',
	\ 'text',
	\ 'gitcommit',
	\ 'scratch'
	\]

" === vim-table-mode ===
noremap <LEADER>tm :TableModeToggle<CR>
let g:table_mode_cell_text_object_i_map = 'k<Bar>'
" <<<<< common text files <<<<<


" >>>>> markdown files >>>>>
" === vim-instant-markdown ===
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1

let g:mkdp_browser='google-chrome-stable'

" === vim-markdown-toc ===
let g:vmt_auto_update_on_save = 0
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" <<<<< markdown files <<<<<

" >>>>> golang >>>>>" ===
" ===
" ==== vim-go
" ===
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

" <<<<< golang <<<<<









" ===
" === tools
" ===
" >>>>> git tools >>>>>
" === vim-gitgutter ===
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" <<<<< git tools <<<<<
" >>>>> file navigation >>>>>
" === Leaderf ===
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'vendor', 'node_modules'],
        \ 'file': ['__vim_project_root']
        \}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0
" <<<<< file navigation <<<<<
