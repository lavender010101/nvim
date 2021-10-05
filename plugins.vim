if empty(glob('~/.config/nvim/plugged'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.config/nvim/plugged')
	" ===
	" ==== vim plugins supports
	" ===
	Plug 'google/vim-maktaba'

	" ===
	" ==== visual enhancement
	" ===
	" >>>>> theme >>>>>
	" === color ===
	" Plug 'theniceboy/nvim-deus'
	" Plug 'ajmwagar/vim-deus'
	Plug 'morhetz/gruvbox'
	
	" === status line ===
	" Plug 'theniceboy/eleline.vim'
	" Plug 'ojroques/vim-scrollstatus'
	Plug 'lavender010101/spaceline.vim'

	" === tag line ===
    Plug 'mg979/vim-xtabline'

	" === code formater ===
	Plug 'google/vim-codefmt'

	" === file icons ===
    Plug 'ryanoasis/vim-devicons'
	" <<<<< theme <<<<<

	" >>>>> highlighting >>>>>
	Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'} " display the colors in the file
	Plug 'RRethy/vim-illuminate' " highlighting the word under the cursor
	" indent line
	Plug 'Yggdroot/indentLine' " show indent lines
	" rainbow brackets
    Plug 'luochen1990/rainbow'
	" <<<<< highlighting <<<<<




	" ===
	" ==== efficiency
	" ===
	" >>>>> code efficiency >>>>>
	" === auto complete ===
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets'

	" === comment ===
    Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
	
	" === brackets ===
	Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
	
	" === selection ===
	Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
	" === move codes ===
	Plug 'matze/vim-move' " move the selected code blocks/lines



	" <<<<< code efficiency <<<<<

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
    Plug 'airblade/vim-gitgutter'
	Plug 'theniceboy/vim-gitignore'	
	" <<<<< version control <<<<<
	
	" ===
	" ==== css
	" ===
	Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'yarn install'}
    Plug 'hail2u/vim-css3-syntax'

	" ===
	" ==== go
	" ===
	" Plug 'fatih/vim-go'

	
	" ===
	" ==== html
	" ===
    Plug 'alvan/vim-closetag'



	" ===
	" ==== javascript
	" ===
    Plug 'pangloss/vim-javascript'
    Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }



	" ===
	" ==== json
	" ===
    Plug 'neoclide/jsonc.vim'


	" ===
	" ==== markdown
	" ===
	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
	Plug 'mzlogin/vim-markdown-toc', {'for': ['gitignore', 'markdown', 'vim-plug']}
	Plug 'joker1007/vim-markdown-quote-syntax'


	" ===
	" ==== text files
	" ===
	Plug 'dkarter/bullets.vim'
	Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug']}

call plug#end()
