"**********************************
" General configurations
"**********************************
" To make vim incompatible with vi
set nocompatible 
filetype off

" To autoread the existing buffer
set autoread

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" VUNDLE PLUGINS
call vundle#begin()

" let Vundle manage Vundle,required
Plugin 'VundleVim/Vundle.vim' 

" NERDTree
Plugin 'scrooloose/nerdtree'

" Solarized Color Scheme
Plugin 'altercation/vim-colors-solarized'

" Light line
Plugin 'itchyny/lightline.vim'

" Dracula Color Scheme
Plugin 'dracula/vim'

" LaTeX Plugin
Plugin 'lervag/vimtex'

" For commenting and uncommenting a line
Plugin 'tpope/vim-commentary'

call vundle#end()

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]

" Don't redraw the screen unless we need to
set lazyredraw

" Automatically enable mouse
set mouse=a

" To display the current cursor position in lower right corner
set ruler

" To display an incomplete command in the lower right corner
set showcmd

" To display a match for a search pattern when halfway typing it
set incsearch

" Better command line completion
set wildmenu

" To enable items to be highlighted after search
set nohlsearch

" To use the secure modeline
set nomodeline

" To reuse the same window and switch from an unused buffer without saving it
" first
set hidden

" For filetype detection, using filetype plugins, using indent files
filetype plugin indent on

" Color scheme
set background=dark
colorscheme solarized

" Enable syntax highlighting
syntax on

" Set line number
set number

" To do case-sensitive search, except when using caps
set ignorecase
set smartcase

" Force the text to the next line when exceeding 80 characters
set textwidth=80

" Highlight current cursor line
"set cursorline

" Scroll slightly earlier before the cursor reaches the edge
set scrolloff=5

" Indenting
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent
set cindent

" To wrap lines
" set wrap

" Turn backup off
set nobackup
set nowb
set noswapfile

" Round indent to nearest multiple of 2
set shiftround

" Spell-check always on
" set spell

" Underscores denote words
set iskeyword-=_

" No extra spaces when joining lines
set nojoinspaces

" Interpret numbers with leading zeroes as decimal, not octal
set nrformats-=octal

" Auto-format comments
set formatoptions+=jroqn1

" To launch NERDTree on startup
" autocmd VimEnter * NERDTree

" Lightline colorscheme
let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ }

" Allow display of the status line, even if only one window is displayed
set laststatus=2

" To avoid displaying mode in the default status bar
set noshowmode

" To set the command window height to 2 lines
set cmdheight=1

" To time out quickly on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

"********************************************
" Setting up Map Leader and other keymappings
"********************************************
let mapleader = ","

" To improve typing speeds
nnoremap ; :

" Execution of different file types
autocmd filetype cpp    nmap <leader>r :!./a.out<CR>
autocmd filetype c      nmap <leader>r :!./a.out<CR>

" Writing the executed results into a txt file
autocmd filetype cpp    nmap <leader>w :!./a.out > a.txt<CR>

" Compiling files
autocmd filetype cpp    nmap <leader>e :w <bar> exec '!g++ '.shellescape('%')<CR>

" Nerd Tree Toggle
map <F5> :NERDTreeToggle<CR>

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Split windows vertically and horizontally
nmap <C-v> <C-W>v<C-W>
nmap <C-s> <C-W>s<C-W>

" To yank till end of line rather than the full line
map Y y$

" Wrapped lines goes down/up to next row, rather than next line in file
nnoremap j gj
nnoremap k gk

" To switch tabs
nnoremap t gt

" When you forget to use sudo in some files
cmap w!! w !sudo tee % >/dev/null

"**************************
" gVim Specific
"**************************

" For removing Menu bar
"set guioptions-=m

" For removing Tool bar
"set guioptions-=T

" For removing Scroll bar
set guioptions-=r
set guioptions-=L

"set guioptions=ac

let g:vimtex_view_method='zathura'
