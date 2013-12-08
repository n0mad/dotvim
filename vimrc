execute pathogen#infect()

"TAB is 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set comments=s:/*,mb:**,ex:*/,://,b:#,b:##,:%
"syntax highlighting
syntax on


"for search
set hlsearch
set incsearch
set ignorecase
"ignorecase search only if there is no Uppercase in a pattern
set smartcase

set undolevels=1000

"cursor subline
set cursorline


"to make pyflakes work
filetype on
filetype plugin indent on
filetype plugin on
"highlight
let python_highlight_all = 1 

"no annoying files
set nobackup
set noswapfile

"jump not over line but over editor row
nnoremap j gj
nnoremap k gk

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"Russian and British English spelling
setlocal spell spelllang=en_gb,ru
"turned off by default, i do write more code than texts
setlocal nospell

"spelling on-off bindings
map <F2> :set spell<CR>
map <F3> :set nospell<CR>

"disable arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map . <nop>

"different colour schemes for console and gui modes
if &t_Co >=256 || has("gui_running")
    colorscheme mustang 
else
    colorscheme delek
endif

"more useful than absolute ordering: easy jumps with 10k or 3j
set relativenumber
"';' acts similar to ':' - this save me thousand movements a day
nnoremap ; :
"space removes search highlighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"hide buffers, not close
set hidden
set backspace=indent,eol,start
" allow backspacing over everything in insert mode
set shiftwidth=4  " number of spaces to use for autoindenting
set smarttab

autocmd FileType c,cpp,h autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufNewFile,BufRead *.quicktask setf quicktask

"quicktask collapse
nmap f :call CloseFoldIfOpen()<CR>
