" Workarround: Vim issue caused by api has been depreated
if has('python3')
	silent! python3 1
endif

" Map Leader key to comma ',' at the very begining
let mapleader = ' '
let maplocalleader = '\'

set encoding=utf8

" ScriptEncoding UTF-8
scriptencoding UTF-8

" Needed for plugins
filetype off
