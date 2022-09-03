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




" ===
" ==== toggle to background transparent
" ===

noremap <LEADER>u :call TurnOnTransparent()<CR>
noremap <LEADER>i :call TurnOffTransparent()<CR>
func! TurnOnTransparent()
	hi Normal guibg=grey15
endfunction

func! TurnOffTransparent()
	hi Normal guibg=NONE ctermbg=NONE
endfunction

" ===
" ==== show help document
" ===
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')

  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')

  else
    execute '!' . &keywordprg . " " . expand('<cword>')

  endif
endfunction










" Remap for do codeAction of selected region
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w

function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
