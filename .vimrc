" make Vim more useful, but less Vi compatible
set nocompatible

" Enable filetype detection
filetype indent plugin on

" Make backspace work like other apps
set backspace=2

" Display cursor position
set ruler

" Show the status line
set laststatus=2

" Automatically save before commands like :next and :make
set autowrite

" Show the editor mode
set showmode

" Show state of keyboard input
set showcmd

" Allow mouse (is this sacrilege?)
set mouse=a

" Show whitespace characters
set list

" Use wildmenu for command line tab completion
set wildmenu
set wildmode=list:longest,full

" Underline the current line
set cursorline

" Allow modified buffers to go to the background
set hidden

" The TTY is fast
set ttyfast

" Set the minimum number of lines to keep above and below cursor
set scrolloff=5


""""""""""""""""
" Line Numbers "
""""""""""""""""

" Default to absolute line numbers.
set nu


""""""""
" Tabs "
""""""""

" Tabs should be 4-spaces
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Show > for tab
set listchars=tab:>-

" 4 spaces is a tab, so backspace will work properly
set softtabstop=4

" Follow line indentation
set autoindent


""""""""""
" Search "
""""""""""

" Turn on search highlighting
set showmatch
set hlsearch

" Ignore case in searches -- but be smart!
set ignorecase
set smartcase

" Start searching as the characters are typed
set incsearch


"""""""""""""""""""""
" Keyboard Shorcuts "
"""""""""""""""""""""

" Toggle paste mode (F2)
set pastetoggle=<F2>

" Write a file with sudo (w!!)
cmap w!! w !sudo tee % >/dev/null

" Escape (kj)
inoremap kj <Esc>

" Paste from system clipboard in insert mode (Ctrl+v)
imap <C-V> <ESC>"+gpa

" Yank WORD to system clipboard in normal mode
nmap <leader>y "+yE

" Yank selection to system clipboard in visual mode
vmap <leader>y "+y

" Spell check
map <leader>s :setlocal spell! spelllang=en_us<cr>


"""""""""""
" Styling "
"""""""""""

" Colorscheme
colorscheme zenburn

" Syntax highlighting
syntax enable

" Spell check
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap ctermfg=44 term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare ctermfg=44 term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal ctermfg=44 term=underline cterm=underline



