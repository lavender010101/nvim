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

" syntax check
" let g:spaceline_diagnostic_errorsign = '❌ '
" let g:spaceline_diagnostic_warnsign = '⚠ '
" let g:spaceline_diagnostic_oksign

" vim status

" let g:spaceline_custom_vim_status = {
" 			\ "n": "NORMAL ",
" 			\ "V":"VISUAL ",
" 			\ "v":"VISUAL ",
" 			\ "\<C-v>": "VISUAL ",
" 			\ "i":"INSERT ",
" 			\ "R":"🅡 ",
" 			\ "s":"SELECT ",
" 			\ "t":"🅣 ",
" 			\ "c":"COMMAND ",
" 			\ "!":"SE"
" 			\ }


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
