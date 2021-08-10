source $HOME/.config/nvim/base.vim

" >>>>>>>>> Auto load for first time uses

" if empty(glob('~/.config/nvim/autoload/plug.vim'))
" 	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
" 				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
" 
" 
" if empty(glob('~/.config/nvim/plugged'))
" 	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif












" " Set <LEADER> as <SPACE>
" let mapleader=" "

" syntax on

" " show line number
" set number
" set relativenumber


" set splitright
" set splitbelow

" set showcmd
" set wildmenu

" " make scrolling faster
" set ttyfast
" set lazyredraw

" " search
" set hlsearch
" exec \"nohlsearch"
" set incsearch
" set ignorecase
" set smartcase


" set conceallevel=0
" set cole
" let g:vim_json_syntax_conceal=0


" noremap <LEADER>s :set hlsearch<CR>
" noremap <LEADER><CR> :nohlsearch<CR>

" noremap <LEADER><CR> :call HlsearchSwitch()<CR>
















" " keybindings
" noremap H 5h
" noremap J 5j
" noremap K 5k
" noremap L 5l
" noremap W 5w
" noremap B 5b

" " set indent
" set noexpandtab
" set tabstop=4
" set shiftwidth=4
" set autoindent
" set softtabstop=4
" 
" set completeopt=longest,noinsert,menuone,noselect,preview








" let g:python3_host_prog = '/opt/miniconda3/bin/python'






" ===
" === Dress up my vim
" ===
" set termguicolors " enable true colors support
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set background=dark
"let ayucolor="mirage"
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"let g:one_allow_italics = 1


" transparent bg
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE 
    " autocmd vimenter * hi Normal ctermfg=152 ctermbg=NONE

    " let g:airline_theme='dracula'
" let g:airline_theme='onedark'
" color onedark
    "color dracula
    " color deus

    " set background=dark
    " set cursorline

"highlight NonText guibg=None ctermbg=None
" hi NonText ctermfg=gray guifg=grey10
"hi SpecialKey ctermfg=blue guifg=grey70


" let g:terminal_color_0  = '#000000'
" let g:terminal_color_1  = '#FF5555'
" let g:terminal_color_2  = '#50FA7B'
" let g:terminal_color_3  = '#F1FA8C'
" let g:terminal_color_4  = '#BD93F9'
" let g:terminal_color_5  = '#FF79C6'
" let g:terminal_color_6  = '#8BE9FD'
" let g:terminal_color_7  = '#BFBFBF'
" let g:terminal_color_8  = '#4D4D4D'
" let g:terminal_color_9  = '#FF6E67'
" let g:terminal_color_10 = '#5AF78E'
" let g:terminal_color_11 = '#F4F99D'
" let g:terminal_color_12 = '#CAA9FA'
" let g:terminal_color_13 = '#FF92D0'
" let g:terminal_color_14 = '#9AEDFE'




" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
" set clipboard=unnamedplus
" let &t_ut=''
" set autochdir





" ===================== Start of Plugin Settings =====================


" ===
" === eleline.vim
" ===
" let g:airline_powerline_fonts = 0






" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
" let g:gitgutter_sign_allow_clobber = 0
" let g:gitgutter_map_keys = 0
" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_preview_win_floating = 1
" let g:gitgutter_sign_added = '▎'
" let g:gitgutter_sign_modified = '░'
" let g:gitgutter_sign_removed = '▏'
" let g:gitgutter_sign_removed_first_line = '▔'
" let g:gitgutter_sign_modified_removed = '▒'





" ===
" === vim-instant-markdown
" ===
" let g:instant_markdown_slow = 0
" let g:instant_markdown_autostart = 0
"         " let g:instant_markdown_open_to_the_world = 1
"         " let g:instant_markdown_allow_unsafe_content = 1
"         " let g:instant_markdown_allow_external_content = 0
"         " let g:instant_markdown_mathjax = 1
" let g:instant_markdown_autoscroll = 1





" ===
" === Markdown Settings
" ===
" Snippets
" source $HOME/.config/nvim/snippets/markdown.vim
" auto spell
" autocmd BufRead,BufNewFile *.md setlocal spell







" ===
" === Bullets.vim
" ===
" let g:bullets_set_mappings = 0
" let g:bullets_enabled_file_types = [
" 			\ 'markdown',
" 			\ 'text',
" 			\ 'gitcommit',
" 			\ 'scratch'
" 			\]


" ===
" === vim-markdown-toc
" ===
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
" let g:vmt_cycle_list_item_markers = 1
" let g:vmt_fence_text = 'TOC'
" let g:vmt_fence_closing_text = '/TOC'



" ===
" === tcomment_vim
" ===
nnoremap ci cl
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<


" ===
" === vim-table-mode
" ===
" noremap <LEADER>tm :TableModeToggle<CR>
" "let g:table_mode_disable_mappings = 1
" let g:table_mode_cell_text_object_i_map = 'k<Bar>'




" ===
" === vim-table-mode
" ===
" Enable just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" remap the trigger key, default <C-Y> and dont forget ','
" let g:user_emmet_leader_key='<C-Z>'
" let g:user_emmet_expandabbr_key = '<Tab>'






" ===
" === Leaderf
" ===
" " let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1
" let g:Lf_PreviewCode = 1
" let g:Lf_ShowHidden = 1
" let g:Lf_ShowDevIcons = 1
" " let g:Lf_CommandMap = {
" " \   '<C-k>': ['<C-u>'],
" " \   '<C-j>': ['<C-e>'],
" " \   '<C-]>': ['<C-v>'],
" " \   '<C-p>': ['<C-n>'],
" " \}
" let g:Lf_UseVersionControlTool = 0
" let g:Lf_IgnoreCurrentBufferName = 1
" let g:Lf_WildIgnore = {
"         \ 'dir': ['.git', 'vendor', 'node_modules'],
"         \ 'file': ['__vim_project_root']
"         \}
" let g:Lf_UseMemoryCache = 0
" let g:Lf_UseCache = 0


" ===
" === YouCompleteMe
" ===
" let g:syntastic_java_checkers = []
" let g:EclimFileTypeValidate = 0

" ===================== End of Plugin Settings =====================







" ===================== Start of Plugin Install =====================

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugin-settings.vim

" call plug#begin('~/.config/nvim/plugged')
" 
"     " Auto Complete
"     Plug 'neoclide/coc.nvim', {'branch': 'release'}
"             " Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': 'v0.0.79'}
"     Plug 'wellle/tmux-complete.vim'
" 	
" 	
" 	" Pretty Dress
" 	" Plug 'theniceboy/nvim-deus'
" 	" Plug 'ajmwagar/vim-deus'
"     " Plug 'dracula/vim', { 'as': 'dracula' }
" 	
" 	
" 	
" 	" Status Line
" 	Plug 'theniceboy/eleline.vim'
" 	Plug 'ojroques/vim-scrollstatus'
" 
" 	
" 	" General Highlighter
" 	" Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}
" 	Plug 'RRethy/vim-illuminate'
" 
" 	
" 	" File Navigation
" 	Plug 'junegunn/fzf.vim'
" 
" 	
" 	" Tag list
" 	" Plug 'liuchenxu/vista.vim'
" 	
" 	
" 	" Autoformat
" 	Plug 'google/vim-maktaba'
" 	Plug 'google/vim-codefmt'
" 	
" 	
" 	" Git
"             " Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"     Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
"             "Plug 'mhinz/vim-signify'
"     Plug 'airblade/vim-gitgutter'
"     Plug 'cohama/agit.vim'
"     Plug 'kdheepak/lazygit.nvim'
"     
" 	
" 	
" 	">>>>>>>>> Languages >>>>>>>>>
" 	
" 	
" 	" ===== Markdown ===== 
" 	" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" 	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
" 	Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug']}
" 	Plug 'mzlogin/vim-markdown-toc', {'for': ['gitignore', 'markdown', 'vim-plug']}
" 	Plug 'dkarter/bullets.vim'
"     
"     
"     " ===== HTML, CSS, JavaScript, Typescript, PHP, JSON ===== 
"     Plug 'elzr/vim-json'
"     Plug 'neoclide/jsonc.vim'
"     Plug 'othree/html5.vim'
"     Plug 'alvan/vim-closetag'
"            \" Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"             " Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
"             " Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"     Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"             " Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"             " Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"             "Plug 'jaxbot/browserlink.vim'
"     Plug 'HerringtonDarkholme/yats.vim'
"             " Plug 'posva/vim-vue'
"             " Plug 'evanleck/vim-svelte', {'branch': 'main'}
"             " Plug 'leafOfTree/vim-svelte-plugin'
"             " Plug 'leafgarland/typescript-vim'
"     Plug 'MaxMEllon/vim-jsx-pretty'
"     Plug 'pangloss/vim-javascript'
"     Plug 'leafgarland/typescript-vim'
"     Plug 'peitalin/vim-jsx-typescript'
"     Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"     Plug 'pantharshit00/vim-prisma'
"     Plug 'mattn/emmet-vim' 
" 
"     " ===== Go ===== 
"             " Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }
"     
"     
"     " ===== Python =====
"             " Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
"             " Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"             " Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
"     
"     
"     " ===== Flutter =====
"             "Plug 'dart-lang/dart-vim-plugin'
"             "Plug 'f-person/pubspec-assist-nvim', { 'for' : ['pubspec.yaml'] }
"     
"     
"     " ===== Swift =====
"             "Plug 'keith/swift.vim'
"             "Plug 'arzg/vim-swift'
"         
"    
" 	
" 	" ===== Auto complete 
" 	" Plug 'ycm-core/YouCompleteMe'
" 
" 	" <<<<<<<<< Languages <<<<<<<<<  
"     
"     " >>>>>>>> Editor Enhancement >>>>>>>>>
"     Plug 'jiangmiao/auto-pairs'
"     Plug 'mg979/vim-visual-multi'
"     Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
"     Plug 'theniceboy/antovim' " gs to switch
"     Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
"     Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
"             \" Plug 'junegunn/vim-after-object' " da= to delete what's after =
"             \" Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
"             \" Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
"     Plug 'easymotion/vim-easymotion'
"     Plug 'svermeulen/vim-subversive'
"     Plug 'theniceboy/argtextobj.vim'
"     Plug 'rhysd/clever-f.vim'
"     Plug 'AndrewRadev/splitjoin.vim'
"     Plug 'theniceboy/pair-maker.vim'
"     Plug 'theniceboy/vim-move'
"     Plug 'Yggdroot/indentLine'
"     
"     Plug 'honza/vim-snippets'
"     
"     
"     Plug 'mhinz/vim-startify'
"     
"     
"     
"     " Other visual enhancement
"     Plug 'luochen1990/rainbow'
"     Plug 'mg979/vim-xtabline'
"     Plug 'ryanoasis/vim-devicons'
"     Plug 'wincent/terminus'
"     
" 	" Code statistic
" 	Plug 'wakatime/vim-wakatime'
" 	" <<<<<<<<< Editor Enhancement <<<<<<<<<
" call plug#end()


" ===================== End of Plugin Install =====================






















source $HOME/.config/nvim/coc-settings.vim




" >>>>>>>>> coc.vim config >>>>>>>>>
" let g:coc_global_extensions = [
" 	\ 'coc-sh',
" 	\ 'coc-css',
" 	\ 'coc-diagnostic',
" 	\ 'coc-eslint',
" 	\ 'coc-explorer',
" 	\ 'coc-flutter-tools',
" 	\ 'coc-gitignore',
" 	\ 'coc-html',
" 	\ 'coc-json',
" 	\ 'coc-lists',
" 	\ 'coc-prettier',
" 	\ 'coc-prisma',
" 	\ 'coc-pyright',
" 	\ 'coc-python',
" 	\ 'coc-snippets',
" 	\ 'coc-sourcekit',
" 	\ 'coc-stylelint',
" 	\ 'coc-syntax',
" 	\ 'coc-tailwindcss',
" 	\ 'coc-tasks',
" 	\ 'coc-translator',
" 	\ 'coc-tslint-plugin',
" 	\ 'coc-tsserver',
" 	\ 'coc-vetur',
" 	\ 'coc-vimlsp',
" 	\ 'coc-yaml',
" 	\ 'coc-yank',
" 	\ 'coc-java']
" 	" \ 'coc-java-debug']
" 
" TextEdit might fail if hidden is not set.
" set hidden " 缓冲区，可以编辑过程中跳到另外的地方


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=100

" set cmdheight=2


" Don't pass messages to |ins-completion-menu|.
" set shortmess+=c


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 

" Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" 回车选中自动补全
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                        " \: \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

                              
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" 查找上一个报错的地方
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
" nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
" nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
                              

" GoTo code navigation.
" 查找函数定义，实现和参考
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
                              
                              
" Use K to show documentation in preview window.
" 使用 <LEADER>+h 来显示文档
" nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
" 
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction


" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)


" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w


" coc-explorer
" nmap tt :CocCommand explorer<CR>
" nmap ef :CocCommand explorer --preset floating<CR>

" let g:coc_explorer_global_presets = {
" \   '.vim': {
" \     'root-uri': '~/config/nvim',
" \   },
" \   'cocConfig': {
" \      'root-uri': '~/.config/coc',
" \   },
" \   'tab': {
" \     'position': 'tab',
" \     'quit-on-open': v:true,
" \   },
" \   'tab:$': {
" \     'position': 'tab:$',
" \     'quit-on-open': v:true,
" \   },
" \   'floating': {
" \     'position': 'floating',
" \     'open-action-strategy': 'sourceWindow',
" \   },
" \   'floatingTop': {
" \     'position': 'floating',
" \     'floating-position': 'center-top',
" \     'open-action-strategy': 'sourceWindow',
" \   },
" \   'floatingLeftside': {
" \     'position': 'floating',
" \     'floating-position': 'left-center',
" \     'floating-width': 50,
" \     'open-action-strategy': 'sourceWindow',
" \   },
" \   'floatingRightside': {
" \     'position': 'floating',
" \     'floating-position': 'right-center',
" \     'floating-width': 50,
" \     'open-action-strategy': 'sourceWindow',
" \   },
" \   'simplify': {
" \     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
" \   },
" \   'buffer': {
" \     'sources': [{'name': 'buffer', 'expand': v:true}]
" \   },
" \ }










" coc-translator
" nmap ts <Plug>(coc-translator-p)


" coc-snippets
" imap <C-u> <Plug>(coc-snippets-expand)
" vmap <C-k> <Plug>(coc-snippets-select)
" let g:coc_snippet_next = '<c-k>'
" let g:coc_snippet_prev = '<c-j>'
" imap <C-k> <Plug>(coc-snippets-expand-jump)
" let g:snips_author = 'Lavender111'


" <<<<<<<<< coc.vim config<<<<<<<<< 










" >>>>>>>>> AutoFormat >>>>>>>>>
" augroup autoformat_settings
	" autocmd FileType bzl AutoFormatBuffer buildifier
	" autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
	" autocmd FileType dart AutoFormatBuffer dartfmt
	" autocmd FileType go AutoFormatBuffer gofmt
	" autocmd FileType gn AutoFormatBuffer gn
	" autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
	" autocmd FileType java AutoFormatBuffer google-java-format
	" autocmd FileType python AutoFormatBuffer yapf
	" Alternative: autocmd FileType python AutoFormatBuffer autopep8
	" autocmd FileType rust AutoFormatBuffer rustfmt
	" autocmd FileType vue AutoFormatBuffer prettier
" augroup END
" <<<<<<<<< AutoFormat <<<<<<<<< 





" let g:mkdp_browser='chrome' 

source $HOME/.config/nvim/functions.vim


" " Compile function
" noremap r :call CompileAndRun()<CR>
" func! CompileAndRun()
" 	exec "w"
" 	if &filetype == 'c'
" 		" set splitbelow
" 		exec "!g++ % -o %<"
" 		exec "!time ./%<"
" 	elseif &filetype == 'cpp'
" 		set splitbelow
" 		exec "!g++ -std=c++11 % -Wall -o %<"
" 		" :sp
" 		" :res -15
" 		" :res -5
" 		" :term ./%<
" 		exec "!time ./%<"
" 	elseif &filetype == 'java'
" 		set splitbelow
" 		:sp
" 		:res -5
" 		term javac % && time java %<
" 	elseif &filetype == 'sh'
" 		:!time bash %
" 	elseif &filetype == 'python'
" 		set splitbelow
" 		:sp
" 		:term python %
" 	elseif &filetype == 'html'
" 		silent! exec "!".g:mkdp_browser." % &"
" 		" silent! exec "!chrome % &"
" 		" exec '!google-chrome % &'
" 	elseif &filetype == 'markdown'
" 		exec "InstantMarkdownPreview"
" 	elseif &filetype == 'tex'
" 		silent! exec "VimtexStop"
" 		silent! exec "VimtexCompile"
" 	elseif &filetype == 'dart'
" 		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
" 		silent! exec "CocCommand flutter.dev.openDevLog"
" 	elseif &filetype == 'javascript'
" 		set splitbelow
" 		:sp
" 		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
" 	elseif &filetype == 'go'
" 		set splitbelow
" 		:sp
" 		:term go run .
" 	endif
" endfunc
" 







