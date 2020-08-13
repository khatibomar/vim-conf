"*******************************************************"
"							"
"	maintainer	: OmarElKhatibCS		"
"	email		: elkhatibomar@outlook.com	"
"	linkedin	: linkedin.com/in/elkhatibomar	"
"	dev.to		: dev.to/elkhatibomar		"	
"							"
"*******************************************************" 

"---------------"
" Plugins Calls "
"---------------"

	" - For Neovim: stdpath('data') . '/plugged'
	" - Avoid using standard Vim directory names like 'plugin'
	call plug#begin('~/.vim/plugged')
		" Make sure you use single quotes
		
		" for git usage :Git
		Plug 'tpope/vim-fugitive'
		
		" fuzzy file finder , to open files like magic using ctrl+p
		Plug 'kien/ctrlp.vim'
		
		" quoting/parantesis arround a text using :cs
		Plug 'tpope/vim-surround'
		
		" (un)comment using gc/gcc
		Plug 'tpope/vim-commentary'
		
		" easly with go using :GoXX (XX is command like :GoBuild)
		Plug 'fatih/vim-go'
		
		" Important! used to align text
		" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
		" @ToDo watch the video , and make it easier to use
		Plug 'godlygeek/tabular'
		
		" @ToDo setup this plugin
		" edit multi lines in same time
		Plug 'mg979/vim-visual-multi'
		
		" @ToDo add snippets
		" http://vimcasts.org/episodes/ultisnips-python-interpolation/
		Plug 'sirver/ultisnips'
		
		" @ToDo configure NerdTree
		Plug 'scrooloose/nerdtree'
		
		" @ToDo more configuration
		" html emmet
		Plug 'mattn/emmet-vim'
		
		" themes
		Plug 'dracula/vim', { 'as': 'dracula' }
		Plug 'altercation/vim-colors-solarized'
		" end themes
		
		" Initialize plugin system
	call plug#end()

"-----------------"
" general setting "
"-----------------"

	" change leader to ,
		:let mapleader 				= ","


"-----------------"
" Plugins setting "
"-----------------"

	" emmet configurations only inside html,css
		let 	g:user_emmet_install_global 	= 0
		let 	g:user_emmet_mode		= 'n'
		let 	g:user_emmet_leader_key		= ',' " to use emmet pres ,, in normal mode
		autocmd FileType html,css EmmetInstall
	
	" Copy/paste from/to clipboard (require : vim-gtk3)
		vnoremap	<C-c> "+y
		map		<C-p> "+P
	
	" Theme section
		syntax		enable
		colorscheme 	dracula
	" end of theme section
