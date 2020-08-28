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
	
		"smart intellise for vim - Use release branch (recommend)
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		" for git usage :Git
		Plug 'tpope/vim-fugitive'
		
		" fuzzy file finder , to open files like magic using ctrl+p
		Plug 'kien/ctrlp.vim'
		
		" quoting/parantesis arround a text using :cs
		Plug 'tpope/vim-surround'
		
		" (un)comment using gc/gcc
		Plug 'tpope/vim-commentary'
		
		" easly with go using :GoXX (XX is command like :GoBuild)
		Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
		
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
	:let mapleader="," " change leader to ,
	set relativenumber " show numbers on side relativly to the live
	set cursorline " highlight line where cursor is placed
	set tabstop=4 " For tab characters that appear 4-spaces-wide
	
	" Copy/paste from/to clipboard (require : vim-gtk3)
		vnoremap	<C-c> "+y
		map		<C-p> "+P
	
	" Sets how many lines of history VIM has to remember
		set history=500
	
		
	" Set to auto read when a file is changed from the outside
		set autoread
		au FocusGained,BufEnter * checktime
	
	" With a map leader it's possible to do extra key combinations
	" like <leader>w saves the current file
		let mapleader = ","
	
	" Fast saving
		nmap <leader>w :w!<cr>
	
	" :W sudo saves the file 
	" (useful for handling the permission-denied error)
		command! W execute 'w !sudo tee % > /dev/null' <bar> edit!	
	
	" Turn on the Wild menu , like when I type and press tab a menu will
	" appear example :echo h<TAB> will show a menu of suggestions
		set wildmenu

	" Ignore compiled files
	" @Todo Add GO
		set wildignore=*.o,*~,*.pyc
		if has("win16") || has("win32")
	    	set wildignore+=.git\*,.hg\*,.svn\*
		else
	    	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
		endif	
	
	" Don't redraw while executing macros (good performance config)
		set lazyredraw 

	" For regular expressions turn magic on
		set magic
	" No annoying sound on errors
		set noerrorbells
		set novisualbell
		set t_vb=
		set tm=500
	" Turn backup off, since most stuff is in SVN, git etc. anyway...
		set nobackup
		set nowb
		set noswapfile
	set ai "Auto indent
	set si "Smart indent
	set wrap "Wrap lines
"-----------------"
" text editing    "
"-----------------"
	" Move a line of text using ALT+[jk] 
		nmap <M-j> mz:m+<cr>`z
		nmap <M-k> mz:m-2<cr>`z
		vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
		vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z	
	" Delete trailing white space on save, useful for some filetypes ;)
		fun! CleanExtraSpaces()
		    let save_cursor = getpos(".")
		    let old_query = getreg('/')
		    silent! %s/\s\+$//e
		    call setpos('.', save_cursor)
		    call setreg('/', old_query)
		endfun
		
		if has("autocmd")
		    autocmd BufWritePre *.go,*.rb,*.c,*.cpp,*.txt,*.js,*.jsx,*.py,*.sh :call CleanExtraSpaces()
		endif
		
		"toggle neerd tree
		nmap <F6> :NERDTreeToggle<CR>
"-----------------"
" spell checking  "
"-----------------"
	
	" Pressing ,ss will toggle and untoggle spell checking
		map <leader>ss :setlocal spell!<cr>
	
	" Shortcuts using <leader>
		map <leader>sn ]s
		map <leader>sp [s
		map <leader>sa zg
		map <leader>s? z=

"-----------------"
" Plugins setting "
"-----------------"
	" Enable filetype plugins
		filetype plugin on
		filetype indent on

	" emmet configurations only inside html,css
		let 	g:user_emmet_install_global 	= 0
		let 	g:user_emmet_mode		= 'n'
		let 	g:user_emmet_leader_key		= ',' " to use emmet pres ,, in normal mode
		autocmd FileType html,css EmmetInstall

	" Theme section
		syntax		enable
		colorscheme 	murphy
