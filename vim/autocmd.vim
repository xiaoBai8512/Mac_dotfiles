autocmd VimEnter * call s:WelcomePage()

function! s:WelcomePage()
	if argc() == 0 && !exists("s:std_in")
		Startify
	endif
endfunction

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! s:BookmarkMapKeys()
	nmap mm :BookmarkToggle<CR>
	nmap mi :BookmarkAnnotate<CR>
	nmap mn :BookmarkNext<CR>
	nmap mp :BookmarkPrev<CR>
	nmap ma :BookmarkShowAll<CR>
	nmap mc :BookmarkClear<CR>
	nmap mx :BookmarkClearAll<CR>
	nmap mkk :BookmarkMoveUp
	nmap mjj :BookmarkMoveDown
endfunction
function! s:BookmarkUnmapKeys()
	unmap mm
	unmap mi
	unmap mn
	unmap mp
	unmap ma
	unmap mc
	unmap mx
	unmap mkk
	unmap mjj
endfunction

autocmd BufEnter * :call s:BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call s:BookmarkUnmapKeys()
autocmd FileType nerdtree setlocal nolist

"Sync theme from BufferEnter to fix highlighting issues
autocmd BufEnter * :syntax sync fromstart

"RainbowParentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

"Goyo intergration with limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"Startify
autocmd User Startified setlocal cursorline
