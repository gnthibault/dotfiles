" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/Users/thibault.notargiacom/.local/share/dein'

" Set Dein source path (required)
let s:dein_src = '/Users/thibault.notargiacom/.local/share/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('scrooloose/nerdtree')
call dein#add('nvie/vim-flake8') "Type F7 to run format analysis
call dein#add('tpope/vim-fugitive') " :Gdiff :Gstatus :Gcommit

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Indent with 2 spaces
"filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable right-click
set mouse-=a

" Starts NerdTree by default.
autocmd vimenter * NERDTree
let g:NERDTreeWinSize=21
" Line numbering enabled
set number

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
