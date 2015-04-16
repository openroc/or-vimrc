
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so ~/.vim/bundles.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding detection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Enable file type detection
filetype plugin on
filetype indent on

" Enable syntax highlight and completion
syntax enable
syntax on

" Set default color scheme
if has("gui_running")
    set gfn=WenQuanYi\ Micro\ Hei\ Mono\ 10
    color monokai
else
    color desert
endif

" Enable omni completion.
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType c setlocal omnifunc=ccomplete#Complete

" Set Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

" Set configurations
set nocompatible
set autoread
set wildmenu
set ruler
set nu
set lz
set hid
set ignorecase
set smartcase
set incsearch
set magic
set noerrorbells
set novisualbell
set showmatch
set showcmd
set title
set hlsearch
set nobackup
set nowb
set noswapfile
set fen
set expandtab
set smarttab
set lbr
set ai
set smartindent
set cindent
set wrap
set timeout
"set cursorline
"set cursorcolumn
"set confirm

set timeoutlen=500
set matchtime=2
set matchpairs+=<:>
set report=0
set shiftwidth=4
set tabstop=4
set fmr={,}
set fdm=marker
set fdl=10
set mouse=a
set history=300
set t_Co=256
set background=dark
set ffs=unix,dos,mac
set so=7
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set laststatus=2
set completeopt=menu
set pastetoggle=<F3>

" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn

" Set leader
let mapleader = ","
let g:mapleader = ","

" Fast Save
nmap <leader>w :w!<cr>
imap <leader>w <esc>:w!<cr>

" Fast reload vimrc
map <leader>s :source ~/.vimrc<cr>

" Fast format file
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

" Fast switch tab
map <leader>to :tabnew
map <leader>tw :tabnew %<cr>
map <leader>tc :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>te :tabedit
map <leader>tm :tabmove

" Fast adjust shift width
map <leader>s2 :set shiftwidth=2<cr>
map <leader>s4 :set shiftwidth=4<cr>

" Fast switch syntax
map <leader>1 :set syntax=cheetah<cr>
map <leader>2 :set syntax=html<cr>
map <leader>3 :set syntax=python<cr>
map <leader>4 :set syntax=javascript<cr>
map <leader>5 :set syntax=c<cr>
map <leader>6 :set syntax=java<cr>
map <leader>7 :set syntax=nginx<cr>
map <leader>8 :set syntax=perl<cr>
map <leader>9 :set syntax=vb<cr>
map <leader>$ :syntax sync fromstart<cr>

" Fast format indent of the whole file
map <leader>g gg=G

" Fast spell checking
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sd zw
map <leader>s? z=

" Fast remove highlight
map <silent> <leader><cr> :noh<cr>

" Fast remove windows ^M
noremap <leader>m mmHmt:%s/<c-v><cr>//ge<cr>'tzt'm

" Fast select content from current line to bottom
nnoremap <leader>v V`]

" Fast move line up and down, like sublime text
imap <c-up> <esc>ddkPi
imap <c-down> <esc>ddpi

imap <leader>b0 <esc>v0di
imap <leader>b$ <esc>v$di

imap <leader>b <esc>xi

" Fast trigger plug-in
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>a :Ack
nnoremap <c-u> :GundoToggle<cr>
nnoremap <c-p> :CtrlP<cr>

" Fash run shell
map <leader><space> :!
" Fast search
"map <space> /
"map <c-space> ?

" Fast switch window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Fast to close window
"map <c-q> <c-w>q

" Fast switch buffers
map <c-up>    :BufExplorer<CR>
map <c-left>  :bp<cr>
map <c-right> :bn<cr>
map <c-down>  :bd<cr>

" Fast copy&paste with clipboard
vmap <c-F7> "+y<cr>
nmap <c-F8> 0i<F3><c-r>+<esc><F3>

" Fast remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" FIXME  work around the conflicts under tmux
map <F5>  :BufExplorer<CR>
"map <<    :bp<cr>
"map >>    :bn<cr>

vmap <F7> "+y<cr>
nmap <F8> 0i<F3><c-r>+<esc><F3>


" Fast input
iab _date <c-r>=strftime("%d/%m/%y")
iab _time <c-r>=strftime("%H:%M:%S")
iab _now  <c-r>=strftime("%H:%M:%S %d/%m/%y")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Special Settings for different file type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python
au FileType python let python_highlight_all = 1
au FileType python let python_highlight_builtins = 1
au FileType python let python_highlight_exceptions = 1
au FileType python let python_highlight_string_formatting = 1
au FileType python let python_highlight_string_format = 1
au FileType python let python_highlight_string_templates = 1
au FileType python let python_highlight_indent_errors = 1
au FileType python let python_highlight_space_errors = 1
au FileType python let python_highlight_doctests = 1

au FileType python so ~/.vim/syntax/python.vim
au FileType python so ~/.vim/plugin/python_fold.vim
au FileType python so ~/.vim/plugin/python_fn.vim

" Javascript & JQuery
au FileType javascript set shiftwidth=2
au Syntax javascript set syntax=jquery

" Configuration File
" au! BufRead,BufNewFile *.conf setfiletype cfg

" Go

" C/C++
"
" Java
"
" PHP
"
" HTML & XML
au FileType html set ft=htmldjango
au FileType html,xml set shiftwidth=2

" Perl
"
" Ruby
"
" Shell
"
" JSON
"
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personal Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast input
so ~/.vim/plugin/myfastinput.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Loading configurations for bundle plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so ~/.vim/config.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast go to front and back
"imap <m-$> <esc>$a
"imap <m-0> <esc>0i

"cno $h e ~/
"cno $d e ~/Desktop
"cno $c e ~/Code
"cno $t e /tmp

"cno <c-a> <home>
"cno <c-e> <end>
