" ===
" ==== compile and run current code
" ===
noremap r :call RunOrPreview()<CR>

func! RunOrPreview()
	exec "w"

	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"

	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		exec "!time ./%<"

	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"

	elseif &filetype == 'go'
		set splitbelow
		:sp
		" :term go run .
		:term go run %

	elseif &filetype == 'html'
		silent! exec "!".g:browser." % &"

	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<

	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .

	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"

	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python %

	elseif &filetype == 'sh'
		:!time bash %

	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"

	endif
endfunc

