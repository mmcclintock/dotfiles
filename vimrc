set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim
silent! call pathogen#infect()

filetype plugin indent on
syntax on

scriptencoding utf-8

set mouse=a
set history=1000

set backup
set backupdir=/home/michael/.vim/backup
set directory=/home/michael/.vim/swap
set viewdir=/home/michael/.vim/swap

if has("gui_running")
    if has("gui_gtk2")
        set guioptions-=T  "remove toolbar
        set guioptions-=r  "remove right-hand scroll bar
        set guifont=Inconsolata\ 13
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
endif

set background=dark
colorscheme vividchalk
set showmode
set cursorline
if has('cmdline_info')
    ""set ruler
    ""set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif
if has('statusline')
    set laststatus=2
    set statusline=%<%f\ " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=\ [%{&ff}/%Y] " filetype
    set statusline+=\ [%{getcwd()}] " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif
set backspace=indent,eol,start
set linespace=0
set nu
set showmatch
set wildmenu
set wildmode=longest:full,full
set wildignore+=*~,*.aux,tags
set scrolljump=5
set scrolloff=3
set foldenable
set gdefault

set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

set incsearch
set autoread
set autowrite
set textwidth=85
set timeoutlen=1200
set ttimeoutlen=50

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nmap <F3> a<C-R>=strftime("%d/%m/%y %H:%M:%S")<CR><Esc>
imap <F3> <C-R>=strftime("%d/%m/%y %H:%M:%S")<CR>
map <F1> <Esc>
map! <F1> <Esc>
imap jj <Esc>
nnoremap <Leader>a :Tab /
nnoremap <space> i<space><esc>r



if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif
