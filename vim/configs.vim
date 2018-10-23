"Vim settings
filetype plugin indent on
filetype off
set autoindent "Auto indent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set foldenable
set hidden
set hlsearch "highlight search
if has('nvim')
	set inccommand=nosplit "neovim live substitute
endif
set ignorecase
set list listchars=tab:\|\ "set list set listchars | https://github.com/Yggdroot/indentLine/issues/111
set modeline
set nocompatible
set nostartofline
set notimeout ttimeout
set pastetoggle="<F2>"
set ruler
set showcmd
set showmatch
set splitbelow
set splitright
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.swp,*/.DS_Store,*/__pycache__/*,*/.pyc,*/.ropeproject/*,*/node_modules/*
set wildmenu
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noswapfile
set nobackup
set nolazyredraw " Don't redraw while executing macros
set magic " Set magic on, for regex
set ttyfast " Faster redrawing
set scrolloff=7 "Set scrolloff for more visible context top and below
set fileformats=unix,dos,mac "Available formats
set clipboard=unnamed
set sessionoptions+=tabpages,globals
if has("gui_running")
	set macmeta "Set metakey enabled when current system is macos for Yankstack
endif

"GUI specific settings
set guioptions=ik
set mouse=
set noerrorbells
set vb t_vb=

"Themes
let g:ayucolor="dark"
colorscheme ayu
set background=dark "Background color
set nocursorline
set nocursorcolumn
set norelativenumber "Relative number
set guifont=RobotoMono_Nerd_Font:h13
if exists('g:gui_oni')
	set laststatus=0
	set noruler
else
	set laststatus=2
	set ruler
endif
" if exists('+colorcolumn')
"     set colorcolumn=80
" endif
set number "Line Number
set termguicolors
set linespace=0
if !exists('g:syntax_on') | syntax enable | endif

"Plugins

"Deoplete
if !exists('g:gui_oni')
	let g:deoplete#enable_at_startup = 1
	call deoplete#custom#source('file', 'enable_buffer_path', v:true)
endif

"Vim-Jsx-Pretty
let g:vim_jsx_pretty_colorful_config = 1

"UltiSnipates
let g:UltiSnipsUsePythonVersion = 3

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " Tab number
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

"Taboo rename tab
let g:taboo_tabline = 0

"AlwaysMathTags
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'vue': 1,
			\ 'javascript': 1,
			\ 'javascript.jsx': 1,
			\ 'jinja' : 1,
			\ 'wxml': 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\}

"CtrlP
let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 1

"TagBar
let g:tagbar_compact = 1
let g:tagbar_left = 1

"ALE
let g:ale_fixers = {
			\ 'javascript': ['prettier_eslint'],
			\}
let g:ale_use_global_executables = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
			\ 'javascript': ['eslint'],
			\ 'javascript.jsx': ['eslint'],
			\ 'vue': ['eslint'],
			\}

"Indent line
let g:indentLine_enabled = 1
"Stole from ayu theme github repo's README
let g:indentLine_setConceal = 0
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let g:indentLine_conceallevel = 1

"Jsx
let g:jsx_ext_required = 0

"Vim-vue
let g:vue_disable_pre_processors = 1

"Prettier
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 0
let g:prettier#quickfix_auto_focus = 1
"max line length that prettier will wrap on
let g:prettier#config#print_width = 80
"number of spaces per indentation level
let g:prettier#config#tab_width = 4
"use tabs over spaces
let g:prettier#config#use_tabs = 'true'
"print semicolons
let g:prettier#config#semi = 'false'
"single quotes over double quotes
let g:prettier#config#single_quote = 'true'
"print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
"put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'
"void|always
let g:prettier#config#arrow_parens = 'always'
"one|es5|all
let g:prettier#config#trailing_comma = 'all'
"cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'file-override'
"always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
"babylon flow, etc.
let g:prettier#config#parser = 'babylon'

"Emmet
let g:user_emmet_install_global = 1
let g:user_emmet_mode = 'i'
let g:user_emmet_leader_key = '<C-e>'
"For jsx feature
let g:user_emmet_settings = {
			\  'javascript.jsx' : {
			\      'extends' : 'jsx',
			\  },
			\}

"NERDTree
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 35
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.swo$', '\.swp$', '^\.git$',
			\'\.pyc', '\.ropeproject', '__pycache__', '\.tern-port',
			\'\.tern-project', '\.DS_Store' ]
let g:NERDTreeMouseMode = 2
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1

"DevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:airline_powerline_fonts = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

"LanguageClient-neovim
let g:LanguageClient_serverCommands = {
			\ 'javascript.jsx': ['javascript-typescript-stdio'],
			\ 'javascript': ['javascript-typescript-stdio'],
			\ 'json': ['javascript-typescript-stdio'],
			\ 'typescript': ['javascript-typescript-stdio'],
			\ 'typescript.tsx': ['javascript-typescript-stdio'],
			\ 'css': ['css-languageserver','--stdio'],
			\ 'scss': ['css-languageserver','--stdio'],
			\ 'sass': ['css-languageserver','--stdio'],
			\ 'html': ['html-languageserver','--stdio'],
			\ 'vue': ['vls'],
			\ 'go': ['go-langserver'],
			\ 'dart': ['dart_language_server'],
			\ }
let g:LanguageClient_loggingLevel = 'ERROR'
let g:LanguageClient_windowLogMessageLevel = 'Error'
let g:LanguageClient_diagnosticsEnable = 0

"Autopairs
let g:AutoPairsShortcutToggle = ''

"Ack Search
let g:ack_autoclose = 0

"YankRing
let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'
let g:yankring_window_height = 20
let g:yankring_max_history = 999

"Incsearch
let g:incsearch#auto_nohlsearch = 0

"Bookmark
let g:bookmark_no_default_key_mappings = 1

"Flow
let g:flow#enable = 0

"Tmux-Navigator
let g:tmux_navigator_disable_when_zoomed = 1

"vim-rooter
let g:rooter_silent_chdir = 1
