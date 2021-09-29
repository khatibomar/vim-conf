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
	
		" generate boilerplate tests for function
		Plug 'buoto/gotests-vim'

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
		
		" Icons (require icon font check docs)
		Plug 'ryanoasis/vim-devicons'

		" themes
		Plug 'dracula/vim', { 'as': 'dracula' }
		Plug 'altercation/vim-colors-solarized'
		Plug 'juanpabloaj/vim-pixelmuerto'
		Plug 'yasukotelin/notelight'
		Plug 'kaicataldo/material.vim', { 'branch': 'main' }
		Plug 'shaunsingh/moonlight.nvim'
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
    set shiftwidth=4 " when you press tab it will occupy 4 spaces
	set encoding=UTF-8 " required for DevIcons Plugin

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
	" commented because it do some trouble on my machine
	" like removing previous code because I have some sudo error
	"	command! W execute 'w !sudo tee % > /dev/null' <bar> edit!	
	
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
	
	" easier way to move between splits
	" more infos can be found here https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally#resizing-splits
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

"-----------------"
" text editing    "
"-----------------"
	" Move lines using ALT+[jk] 
		nnoremap <A-k> :m .-2<CR>==
		nnoremap <A-j> :m .+1<CR>==
		inoremap <A-j> <Esc>:m .+1<CR>==gi
		inoremap <A-k> <Esc>:m .-2<CR>==gi
		vnoremap <A-j> :m '>+1<CR>gv=gv
		vnoremap <A-k> :m '<-2<CR>gv=gv
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
		
	nmap <leader>d <Esc>Yp " duplicate last line
	
	" mouse setting
	set mouse=a
	map <ScrollWheelUp> <C-Y>
	map <ScrollWheelDown> <C-E>
	
	" force vim to syntax highlight gohtml as html
	au BufReadPost *.gohtml set syntax=html
	
	" ctrd-d to delete line
	nmap <C-d> dd
	imap <C-d> <esc>ddi
	
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
		colorscheme notelight 
		let g:solarized_termcolors=256 " used for solorized theme
	" Nerdtree configuration goes here
		" open Nerdtree
		nnoremap <Leader>nt :NERDTreeToggle<Enter>
		let NERDTreeQuitOnOpen = 1

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/
" -------------------------------------------------------------------------------------------------
	
	" if hidden is not set, TextEdit might fail.
	set hidden
	" Better display for messages
	set cmdheight=2
	" Smaller updatetime for CursorHold & CursorHoldI
	set updatetime=300
	" don't give |ins-completion-menu| messages.
	set shortmess+=c
	" always show signcolumns
	" set signcolumn=yes
	
	" Use tab for trigger completion with characters ahead and navigate.
	" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
	inoremap <silent><expr> <TAB>
	      \ pumvisible() ? "\<C-n>" :
	      \ <SID>check_back_space() ? "\<TAB>" :
	      \ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
	
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction
	
	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()
	
	" Use `[c` and `]c` to navigate diagnostics
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)
	
	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	
	" Use U to show documentation in preview window
	nnoremap <silent> U :call <SID>show_documentation()<CR>
	
	" Remap for format selected region
	vmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)
	" Show all diagnostics
	nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions
	nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
	" Show commands
	nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document
	nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols
	nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list
	nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
	
	" disable vim-go :GoDef short cut (gd)
	" this is handled by LanguageClient [LC]
	let g:go_def_mapping_enabled = 0

" GO settings

	" disable all linters as that is taken care of by coc.nvim
	let g:go_diagnostics_enabled = 0
	let g:go_metalinter_enabled = []
	" don't jump to errors after metalinter is invoked
	let g:go_jump_to_error = 0
	" run go imports on file save
	let g:go_fmt_command = "goimports"
	" automatically highlight variable your cursor is on
	let g:go_auto_sameids = 0

	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_functions = 1
	let g:go_highlight_function_calls = 1
	let g:go_highlight_operators = 1
	let g:go_highlight_extra_types = 1
	let g:go_highlight_build_constraints = 1
	let g:go_highlight_generate_tags = 1

	" running all the tests in the current file to <leader>-t
	autocmd BufEnter *.go nmap <leader>t  <Plug>(go-test)
	" mapped <leader> + tt to run the current test function only
	autocmd BufEnter *.go nmap <leader>tt <Plug>(go-test-func)
	" <leader> + c to toggle the coverage profile for the current file
	autocmd BufEnter *.go nmap <leader>c  <Plug>(go-coverage-toggle)

	" Show the function signature for a given routine with <leader> + i:
	autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
	" Show the interfaces a type implements with <leader> + ii:
	autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
	" Describe the definition of a given type with <leader> + ci:
	autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
	" See the callers of a given function with <leader> + cc:
	autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
	" Find all references of a given type/function in the codebase with <leader> + cr:
	nmap <leader>cr <Plug>(coc-references)
	" renaming the symbol your cursor is on with <leader> + r:
	nmap <leader>r <Plug>(coc-rename)
	" auto generate boilerplate tests
	nmap <leader>gt :GoTests<Enter>
	nmap <leader>gat :GoTestsAll<Enter>
