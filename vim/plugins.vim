"Automatic install plugins when there is no plugin installed from vimenter
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	au VimEnter * PlugInstall --sync | so $MYVIMRC
endif

"Vim-plug
call plug#begin('~/.vim/vim-plug-plugins')

if !exists('g:gui_oni')
	if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	Plug 'prettier/vim-prettier', {'do': 'yarn install'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-sensible'
endif
Plug 'autozimu/LanguageClient-neovim', {
			\ 'branch': 'next',
			\ 'do': 'bash install.sh'
			\}
Plug 'marijnh/tern_for_vim', {'do': 'yarn install'}
Plug 'chemzqm/wxapp.vim'
Plug 'epilande/vim-react-snippets'
Plug 'herringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'heavenshell/vim-jsdoc'
Plug 'gorodinskiy/vim-coloresque'
Plug 'honza/vim-snippets'
Plug 'sirVer/ultisnips'
Plug 'rstacruz/vim-ultisnips-css'
Plug 'editorconfig/editorconfig-vim'
Plug 'andrewradev/splitjoin.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-fold'
Plug 'coderifous/textobj-word-column.vim'
Plug 'wellle/targets.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify' "Show version control status by adding a sign column
Plug 'mhinz/vim-startify' "Beautiful welcome page
Plug 'mileszs/ack.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'raimondi/delimitmate'
Plug 'shougo/denite.nvim'
Plug 'shougo/unite.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'yggdroot/indentline'
Plug 'danro/rename.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ujihisa/neco-look'
Plug 't9md/vim-choosewin'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/BufOnly.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'gcmt/taboo.vim'
Plug 'tpope/vim-abolish'
Plug 'vim-scripts/YankRing.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tommcdo/vim-exchange'
Plug 'matze/vim-move'
Plug 'dkprice/vim-easygrep'
Plug 'chrisbra/nrrwrgn'
Plug 'junegunn/vim-peekaboo'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-expand-region'
Plug 'valloric/MatchTagAlways'
Plug 'airblade/vim-rooter'
Plug 'flowtype/vim-flow', {'for': ['javascript', 'javascript.jsx']}

"Preview substitute on fly
if !has('nvim')
	Plug 'osyo-manga/vim-over'
endif

"Always load as the very last one
if !exists('g:gui_oni')
	Plug 'ryanoasis/vim-devicons'
endif

call plug#end()
