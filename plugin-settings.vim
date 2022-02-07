" ################################
" ########## Appearence ##########
" ################################
" >>>>> mg979/vim-xtabline (tabs)>>>>>
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1

func! SetBufferName()
	let s:file_name=expand('%')
	" let s:file_path=expand('%:p:h:t')
	" let s:buffer_title=s:file_path.'/'.s:file_name
	" call xtabline#cmds#run("name_tab", expand('%:p:h:t'))
	call xtabline#cmds#run("name_tab", s:file_name)
endfunc
" <<<<< mg979/vim-xtabline <<<<<

" >>>>> lavender010101/spaceline.vim (bottom line)>>>>>
let g:spaceline_seperate_style = 'arrow-fade'
let g:spaceline_colorscheme = 'default'
let g:spaceline_lsp_executive = 'coc' " show lsp status
let g:spaceline_diff_tool = 'git-gutter' " show git status
" <<<<< lavender010101/spaceline.vim <<<<<

" >>>>> theniceboy/eleline.vim >>>>>
let g:airline_powerline_font = 0
" <<<<< theniceboy/eleline.vim <<<<<

" >>>>> airblade/vim-gitgutter (git status) >>>>>
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" <<<<< airblade/vim-gitgutter <<<<<

" >>>>> vim-devicons >>>>>
" let g:webdevicons_enable = 1 " loading the plugin
" let g:webdevicons_enable_startify = 1 " support vim-startify
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
" <<<<< vim-devicons <<<<<

" >>>>> Yggdroot/indentLine (show indent) >>>>>
autocmd FileType json,markdown let g:indentLine_conceallevel = 0 " restore double quote
" <<<<< Yggdroot/indentLine <<<<<

" >>>>> elzr/vim-json >>>>>
autocmd FileType json,markdown let g:vim_json_syntax_conceal = 0
" <<<<< elzr/vim-json <<<<<


" >>>>> nvim-treesitter/nvim-treesitter >>>>>
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript", "dart", "java"},     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
" <<<<< nvim-treesitter/nvim-treesitter <<<<<




" #####################################
" ########## Efficient Tools ##########
" #####################################
" let g:translator_default_engines = [ 'bing', 'google', 'haici']
let g:translator_default_engines = [ 'google', 'haici']
" Display translation in a window
nmap <silent> ts <Plug>TranslateW
vmap <silent> ts <Plug>TranslateWV
" Replace the text with translation
nmap <silent> tr <Plug>TranslateR
vmap <silent> tr <Plug>TranslateRV




" ####################################
" ########## Coding Enhance ##########
" ####################################
" ===
" ==== Common Text
" ===
" >>>>> luochen1990/rainbow (rainbow brackets) >>>>>
let g:rainbow_active = 1
" <<<<< luochen1990/rainbow <<<<<

" >>>>> liuchengxu/vista.vim (list variables and functions) >>>>>
noremap tg :Vista!!<CR>

" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_icon_indent = ["└─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_sidebar_width = 36
let g:vista_fzf_preview = ['right:50%']
let g:vista_update_on_text_changed = 1
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
" <<<<< liuchengxu/vista.vim <<<<<

" >>>>> RRethy/vim-hexokinase (preview colors in editor) >>>>>
let g:Hexokinase_highlighters = ['backgroundfull'] " options: 'virtual' 'sign_column' 'foreground[full]' 'background[full]'
" <<<<< RRethy/vim-hexokinase <<<<<

" >>>>> RRethy/vim-illuminate (highlight the words under cursor) >>>>>
let g:Illuminate_delay = 750
hi illuminateWord cterm=undercurl gui=undercurl
" <<<<< RRethy/vim-illuminate <<<<<

" >>>>> dkarter/bullets.vim (auto add lists symbols) >>>>>
let g:bullets_enabled_file_types = [
	\ 'markdown',
	\ 'text',
	\ 'gitcommit',
	\ 'scratch'
	\]
" <<<<< dkarter/bullets.vim <<<<<

" >>>>> tomtom/tcomment_vim (comment lines or block) >>>>>
nnoremap ci cl
let g:tcomment_textobject_inlinecomment = ''
nmap <a-/> gcc
vmap <a-/> gc
" nmap <LEADER>cn g>c
" vmap <LEADER>cn g>
" nmap <LEADER>cu g<c
" vmap <LEADER>cu g<
" <<<<< tomtom/tcomment_vim <<<<<

" >>>>> dhruvasagar/vim-table-mode (align items in form) >>>>>
noremap <LEADER>tm :TableModeToggle<CR>
let g:table_mode_cell_text_object_i_map = 'k<Bar>'
" <<<<< dhruvasagar/vim-table-mode <<<<<


" ===
" ==== Golang
" ===
" >>>>> fatih/vim-go (Golang ide) >>>>>
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
" <<<<< fatih/vim-go <<<<<

" ===
" ==== Markdown
" ===
" >>>>> instant-markdown/vim-instant-markdown (markdown preview) >>>>>
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1

let g:mkdp_browser='google-chrome-stable'
" <<<<< instant-markdown/vim-instant-markdown <<<<<

" >>>>> mzlogin/vim-markdown-toc (markdown toc) >>>>>
" === vim-markdown-toc ===
let g:vmt_auto_update_on_save = 0
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'
" <<<<< mzlogin/vim-markdown-toc <<<<<

