"Normal mode open my vimrc files
nnoremap <silent> <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
nnoremap <silent> <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
nnoremap <silent> <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
nnoremap <silent> <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
nnoremap <silent> <Leader>osp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
nnoremap <silent> <Leader>osv :exec "tabnew " . VIMCONFIGDIR . "/vimrc"<CR>

"Disable Space
nnoremap <Space> <Nop>

"Quit current window
nnoremap <silent> <C-Z> :q<CR>

"Yank till end of the line
nnoremap <silent> Y :<C-U>YRYankCount 'y$'<CR>

"Map <Esc> to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

"Disable arrow keys
nnoremap <silent> <Up> <Nop>
nnoremap <silent> <Down> <Nop>
nnoremap <silent> <Left> <Nop>
nnoremap <silent> <Right> <Nop>

"Easy resize window
nnoremap <silent> <S-Up> :res +1<CR>
nnoremap <silent> <S-Down> :res -1<CR>
nnoremap <silent> <S-Left> :vertical res -1<CR>
nnoremap <silent> <S-Right> :vertical res +1<CR>

"Insert mode quick open new line
inoremap <silent> <C-CR> <C-O>o
inoremap <silent> <C-S-CR> <C-O>O

"Normal mode toggle NERDTree (think as File list)
nnoremap <silent> <Leader>fl :exec "NERDTreeToggle"<CR>
nnoremap <silent> <F1> :exec "NERDTreeFocus!"<CR>

"Normal mode toggle Tagbar
nnoremap <silent> <F8> :exec "TagbarToggle"<CR>

"YankRing show quick fix menu
nnoremap <silent> <F11> :YRShow<CR>

"Tab
nnoremap <silent> <Leader>tn :exec "tabnew"<CR>
nnoremap <Leader>tr :TabooRename!<Space>

"Zen mode using goyo and resize to 200 width
nnoremap <silent> <Leader>z :exec 'Goyo 200 \| setl nu'<CR>

"Normal mode open terminal
nnoremap <silent> <Leader>` :exec "terminal"<CR>

"Normal mode escape for redraw window and sync highlighting, this is beacuse
"of <C-L> is used for navigating windows
"Cant bind to <Esc> beacuse it will cause E481 no range allowed warning
nnoremap <silent> <BS> :exec "diffupdate \| nohlsearch \| syntax sync fromstart \| redraw"<CR>

"Normal mode source my vimrc file
nnoremap <Leader>so :exec "source " . $MYVIMRC<CR>

"ALE jump errors
nnoremap <silent> <leader>an :ALENextWrap<cr>
nnoremap <silent> <leader>ap :ALEPreviousWrap<cr>

"Vim-Plug
nnoremap <silent> <Leader>PI :exec "so $MYVIMRC \| PlugInstall"<CR>
nnoremap <silent> <Leader>PU :exec "so $MYVIMRC \| PlugUpdate"<CR>
nnoremap <silent> <Leader>PC :exec "so $MYVIMRC \| PlugClean"<CR>

"ChooseWindows
nmap , <Plug>(choosewin)

"Normal mode save current file
nnoremap <silent> <Leader>w :exec "write"<CR>

"LocalLeader
"Fuzzy finder find files
nnoremap <silent> <LocalLeader>F :exec "Files"<CR>
"Fuzzy finder help tags
nnoremap <silent> <LocalLeader>H :exec "Helptags"<CR>
"Fuzzy finder help about commands
nnoremap <silent> <LocalLeader>CM :exec "Commands"<CR>
"Fuzzy finder help about commits
nnoremap <silent> <LocalLeader>CC :exec "Commits"<CR>
"Fuzzy finder help about maps
nnoremap <silent> <LocalLeader>M :exec "Maps"<CR>
"Normal mode show a prompt for ack search for code
nnoremap <LocalLeader>A :Ack!<Space>
"Normal mode show a prompt for Buffers list
nnoremap <silent> <LocalLeader>B :exec "Buffers"<CR>

"Select mode indention dont lose selections
xnoremap < <gv
xnoremap > >gv

"Emmet
" imap <silent> <C-]> <plug>(emmet-expand-abbr)

"Neosnippets
imap <expr><TAB>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"Excute macros multiple lines
xnoremap @ :<C-U>call ExecuteMacroOverVisualRange()<CR>
func! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @".nr2char(getchar())
endfunc

"LanguageClient
autocmd BufEnter *.js,*.jsx,*.ts,*.tsx,*.vue,*.json,*.css,*.scss,*.sass,*.less,*.html call s:registKeyBindings()

function! s:registKeyBindings() abort
	nnoremap <F5> :call LanguageClient_contextMenu()<CR>
	" Or map each action separately
	nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
	nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
	nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
	nnoremap <silent> <F12> :call LanguageClient#textDocument_references()<CR>
endfunction

"Ultisnips
inoremap <silent> <Tab> <c-r>=UltiSnips#ExpandSnippet()<cr>

"Incsearch
map <silent> n  <Plug>(incsearch-nohl-n)
map <silent> N  <Plug>(incsearch-nohl-N)
map <silent> *  <Plug>(incsearch-nohl-*)
map <silent> #  <Plug>(incsearch-nohl-#)
map <silent> g* <Plug>(incsearch-nohl-g*)
map <silent> g# <Plug>(incsearch-nohl-g#)

"Matchtagalways
nnoremap <silent> <Leader>% :MtaJumpToOtherTag<CR>
