if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set rtp+=/Users/yokoishiho/.local/lib/python3.5/site-packages/powerline/bindings/vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('altercation/vim-colors-solarized')
"call dein#add('Shougo/neocomplete')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('scrooloose/syntastic')
call dein#add('haya14busa/incsearch.vim')
call dein#add('Townk/vim-autoclose')
call dein#add('violetyk/neocomplete-php.vim')
call dein#add('StanAngeloff/php.vim')
call dein#add('szw/vim-tags')
call dein#add('tpope/vim-endwise')
call dein#add('plasticboy/vim-markdown')
call dein#add('Yggdroot/indentLine')
call dein#add('grep.vim')
call dein#end()

if dein#check_install()
	call dein#install()
endif

filetype indent plugin on
filetype plugin on

syntax on
syntax enable
set nocompatible
set number
set title
set showmatch
set expandtab
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set background=dark
set cursorline
colorscheme solarized
set backspace=indent,eol,start
set wildmode=list:longest

" key bind set
nmap ss :split<CR>
nmap sv :vsplit<CR>
nmap st :tabnew<CR>
nmap sn gt
nmap sp gT
nmap sw <C-w>w
nmap sl <C-w>l
nmap sj <C-w>j
nmap sk <C-w>k
nmap sh <C-w>h
nmap s- <C-w><
nmap s- <C-w>-
nmap s= <C-w>+
nmap s= <C-w>>

" neocomplete set

"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_ignore_case = 1
"let g:neocomplete#enable_smart_case = 1
"if !exists('g:neocomplete#keyword_patterns')
"	let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns._ = '\h\w*'
"
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_smart_case = 1
"if !exists('g:neocomplcache_keyword_patterns')
"	let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns._ = '\h\w*'
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1

" vim-indent-guides
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_start_level = 2
"" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
"" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=250
"let g:indent_guides_enable_on_vim_startup = 2
"let g:indent_guides_guide_size = 1

" indentLine
let g:indentLine_colot_term = 239
let g:indentLine_char = '┆'

" syntastic
let g:syntastic_javascript_checker = "jshint" "JavaScriptのSyntaxチェックはjshintで
let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施

" solarized

let g:solarized_termtrans = 1
let g:solarized_termcolors = 256

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" --------------------------------- NeoSnippet ------------------------------
"  "
"
"  "" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			 \ "\<Plug>(neosnippet_expand_or_jump)"
			 \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			 \ "\<Plug>(neosnippet_expand_or_jump)"
			 \: "\<TAB>"

 " For snippet_complete marker.
 if has('conceal')
	 set conceallevel=2 concealcursor=i
 endif

 " Enable snipMate compatibility feature.
 let g:neosnippet#enable_snipmate_compatibility = 1

 " Tell Neosnippet about the other snippets
 let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

 " Powerline
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
set laststatus=2
set showtabline=2
set noshowmode

" php
let g:neocomplete_php_locale='ja'

" NERDTree
let g:NERDTreeShowBookmarks=1
autocmd vimenter * NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Python3 support
let g:python3_host_prog = '/usr/local/bin/python3'
