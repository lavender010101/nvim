" ===
" === key maps
" ===

" >>>>> LEADER >>>>>
let mapleader=" "
" <<<<< LEADER <<<<<

" >>>>> cursor motion >>>>>
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l
noremap W 5w
noremap B 5b

noremap ; 0
noremap ' $
" <<<<< cursor motion <<<<<


" >>>>> search >>>>>
noremap <LEADER>s :set hlsearch<CR>
noremap <LEADER><CR> :nohlsearch<CR>
" <<<<< search <<<<<


" >>>>> base command >>>>>
noremap Q :qa<CR>
" <<<<< base command <<<<<




" ===
" ==== editor enhance
" ===
" >>>>> theme >>>>>
" show cursorline
set cursorline

" color
" color deus
" color onedark
color gruvbox
let g:gruvbox_termcolors=16
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


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

" transparent
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" autocmd vimenter * hi Normal guibg=grey15
hi NonText ctermfg=gray guifg=grey10
" <<<<< theme <<<<<


" >>>>> syntax highlighting >>>>>
" base
syntax on

" json
let g:vim_json_syntax_conceal=0 " unable to hidden the double quote

" <<<<< syntax highlighting <<<<<


" >>>>> line number >>>>>
set number
set relativenumber
" <<<<< line number <<<<<

" >>>>> status line >>>>>
" 0->never 1->only if there at least two windows 3->always default:2
set laststatus=2 " show status line


" <<<<< status line <<<<<

" >>>>> command window >>>>>
set showcmd
" set cmdheight=2
" <<<<< command window <<<<<

" >>>>> split windows >>>>>
set splitright
set splitbelow
" <<<<< split windows <<<<<

" >>>>> tabs >>>>>
set switchbuf=usetab
" <<<<< tabs <<<<<

" >>>>> search >>>>>
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
" <<<<< search <<<<<


" >>>>> indent >>>>>
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4

" show space and tab characters
set list
set listchars=tab:\|\ ,trail:▫
" <<<<< indent <<<<<

" >>>>> fold >>>>>
set foldenable
set foldlevel=99
set foldmethod=indent
noremap <<silent> <LEADER>o za

" wrap
set wrap
" set colorcolumn=100
" <<<<< fold <<<<<

" >>>>> mouse >>>>>
" options: a->Normal v->Visual i->Insert c->Command h->Help a->nvich(All)
set mouse=a
" <<<<< mouse <<<<<


" >>>>> auto reload >>>>>
set autoread
" <<<<< auto reload <<<<<


" >>>>> history >>>>>
" auto jump to the line last exited
if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") <= line("$") |
				\ exe "normal g`\"" |
				\ endif
endif
" <<<<< history <<<<<








" ===
" ==== auto completion
" ===
" >>>>> command >>>>>
set wildmenu
" <<<<< command <<<<<


" >>>>> code >>>>>
set completeopt=longest,noinsert,menuone,noselect,preview
" <<<<< code <<<<<



" ===
" ==== efficiency
" ===
" >>>>> clipboard >>>>>
set clipboard=unnamedplus
" Comunicate vim clipboard and system clipboard
nnoremap <c-y> "+yy
vnoremap <c-y> "+yy
nnoremap <c-p> "*p"
" <<<<< clipboard <<<<<


" >>>>> directory >>>>>
set autochdir
" <<<<< directory <<<<<

" >>>>> buffer >>>>>
set hidden " alllow user jump to another file while editing current file
" <<<<< buffer <<<<<


" ===
" ==== environment
" ===
let g:python3_host_prog = '/opt/miniconda3/bin/python'




" ===
" ==== performance
" ===
" >>>>> scroll >>>>>
set ttyfast
set lazyredraw
set scrolloff=4 " keep some line from edge when scrolling
" <<<<< scroll <<<<<
" >>>>> message >>>>>

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" <<<<< message <<<<<









" ===
" ==== default setting
" ===
" === browser ===
let g:browser='google-chrome-stable'
" let g:mkdp_browser='chrome'

" === file encoding ===
set fileencodings=utf-8,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" === input ===
set ttimeoutlen=50
