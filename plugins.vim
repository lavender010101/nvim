" if empty(glob('~/.config/nvim/plugged'))
" 	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
" 				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif



call plug#begin('~/.config/nvim/plugged')
	" ################################
	" ########## Appearence ##########
	" ################################
	" >>>>> theme and colorscheme >>>>>
	Plug 'morhetz/gruvbox' " theme and colorscheme
	" Plug 'theniceboy/nvim-deus'
	" Plug 'ajmwagar/vim-deus'
	" <<<<< theme and colorscheme <<<<<
	
	" >>>>> bottom line >>>>>
	Plug 'lavender010101/spaceline.vim'
	" <<<<< bottom line <<<<<

	" >>>>> tabs  >>>>>
    Plug 'mg979/vim-xtabline'
	" <<<<< tabs <<<<<

	" >>>>> icons >>>>>
    Plug 'ryanoasis/vim-devicons'
	" <<<<< icons <<<<<
	






	" ###########################
	" ########## tools ##########
	" ###########################
	
	" ===
	" ==== Common
	" ===
	" >>>>> completion >>>>>
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets'
	" <<<<< completion <<<<<

	" >>>>> code formatter >>>>>
	" Plug 'google/vim-maktaba' " depended by vim-codefmt
	" Plug 'google/vim-codefmt'
	" <<<<< code formatter <<<<<

	" >>>>> highlighting and prompt >>>>>
	Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'} " display the colors in the file
	Plug 'RRethy/vim-illuminate' " highlighting the word under the cursor
	Plug 'Yggdroot/indentLine' " show indent lines
	Plug 'luochen1990/rainbow' " rainbow brackets
	Plug 'jiangmiao/auto-pairs' " highlight the pair brackets
	Plug 'theniceboy/vim-gitignore'	" highlight the gitignore file
	" <<<<< highlighting and prompt <<<<<

	" >>>>> other enhance >>>>>
    Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line

    Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`

	Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp

	Plug 'matze/vim-move' " move the selected code blocks/lines

	Plug 'liuchengxu/vista.vim' " show variables and functions

	Plug 'wakatime/vim-wakatime' " coding statistic

    Plug 'mhinz/vim-startify' " fast open history files

    Plug 'airblade/vim-gitgutter' " show git status
	" <<<<< other enhance <<<<<



<<<<<<< HEAD
	" >>>>> tags >>>>>
	Plug 'liuchengxu/vista.vim'
	" <<<<< tags <<<<<
	
	" >>>>> statistic >>>>>
	Plug 'wakatime/vim-wakatime'
	" <<<<< statistic <<<<<
	
	" >>>>> schedule >>>>>
	Plug 'itchyny/calendar.vim'
	" <<<<< schedule <<<<<
	
	" >>>>> file searching >>>>>
	Plug 'junegunn/fzf.vim'
	" <<<<< file searching <<<<<
	
	" >>>>> file history >>>>>
    Plug 'mhinz/vim-startify'
	" <<<<< file history <<<<<
	
	" >>>>> version control >>>>>
	" === git ===
	" Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug']  }
	" Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins'  }
    Plug 'airblade/vim-gitgutter'
    " Plug 'cohama/agit.vim'
	" Plug 'kdheepak/lazygit.nvim'
	
	" <<<<< version control <<<<<
=======
>>>>>>> origin/master
	

	" #######################################
	" ########## Languages Support ##########
	" #######################################
	" ===
	" ==== css
	" ===
	" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'yarn install'}
<<<<<<< HEAD
    " Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
=======
    Plug 'hail2u/vim-css3-syntax'
>>>>>>> origin/master


	" ===
	" ==== go
	" ===
<<<<<<< HEAD
	Plug 'fatih/vim-go'
=======
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
>>>>>>> origin/master

	
	" ===
	" ==== html
	" ===
    Plug 'alvan/vim-closetag'


	" ===
	" ==== javascript
	" ===
    " Plug 'pangloss/vim-javascript'
    " Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }



	" ===
	" ==== json
	" ===
	Plug 'elzr/vim-json'
    " Plug 'neoclide/jsonc.vim'


	" ===
	" ==== markdown
	" ===
<<<<<<< HEAD
	" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
	" Plug 'mzlogin/vim-markdown-toc', {'for': ['gitignore', 'markdown', 'vim-plug']}
=======
	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
	Plug 'mzlogin/vim-markdown-toc', {'for': ['gitignore', 'markdown', 'vim-plug']}
	Plug 'joker1007/vim-markdown-quote-syntax'
>>>>>>> origin/master


	" ===
	" ==== common text files
	" ===
	Plug 'dkarter/bullets.vim' " auto add lists symbols
	Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug']}

call plug#end()
