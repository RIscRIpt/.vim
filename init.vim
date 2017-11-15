scriptencoding utf-8
set encoding=utf-8
filetype plugin indent on

let mapleader = "\<Space>"
let maplocalleader = "\\"

"let $VIMDIR = fnamemodify($MYVIMRC, ":p:h")
if has('win32')
    let $VIMDIR = "~/vimfiles"
else
    let $VIMDIR = "~/.vim"
endif

if exists("$SUDO_USER")
    set nobackup
    set nowritebackup
    set noswapfile
    set noundofile
    set viminfo=
    set viewdir=
else
    let &backupdir=expand($VIMDIR . "/backup")
    let &directory=expand($VIMDIR . "/swpfiles//")
    let &undodir=expand($VIMDIR . "/undo")
    let &viewdir=expand($VIMDIR . "/view")

    set undofile
endif

" Load plugins
source $VIMDIR/plugins.vim
source $VIMDIR/settings.vim

syntax on

set background=dark

if has("gui_running")
    source $VIMDIR/ginit.vim
endif


if has('win32')
    let g:airline_theme='solarized'
    let g:solarized_termcolors = 256
    if has('nvim')
        colorscheme NeoSolarized
    else
        colorscheme solarized
    endif
else
    let g:airline_theme='wal'
    colorscheme wal
endif

if has('win32')
    noremap <silent> <F4>  :silent !start python<CR>
    noremap <silent> <F5>  :silent !start "%:p:r:s,$,.exe,"<CR>
    noremap <silent> <F10> :silent !start ollydbg.exe "%:p:r:s,$,.exe,"<CR>
    "noremap <F11> <Esc>:simalt ~x<CR>
    noremap <silent> <F11>        <Esc>:silent call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR><C-w>=
    noremap <silent> <S-PageUp>   <Esc>:silent call libcallnr("gvimfullscreen.dll", "AddAlpha", +5)<CR>
    noremap <silent> <S-PageDown> <Esc>:silent call libcallnr("gvimfullscreen.dll", "AddAlpha", -5)<CR>
endif

if has('directx')
    set renderoptions=type:directx,gamma:1.0,contrast:0.0,level:1,geom:1,renmode:5,taamode:1
endif

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

set backspace=indent,eol,start
set showcmd
set number
set relativenumber
set ruler
set smarttab
set autoindent
set smartindent
set breakindent
set clipboard+=unnamedplus
let &showbreak='↳'
set nowrap
set formatoptions+=nj
set foldmethod=marker
"set cursorline
"set cursorcolumn
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
"set colorcolumn=80
"call matchadd('ColorColumn', '\%80v')
set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden
set scrolloff=8
set sidescrolloff=8
set list
set listchars=tab:\¦\ ,trail:·,nbsp:░,extends:»,precedes:«
set lazyredraw
set mouse=a
set shortmess+=aoOtTWAI
set splitbelow
set splitright
set wildmenu
set wildmode=longest:full,full

if has('cryptmethod')
    set cryptmethod=blowfish2
endif

" Transparent terminal background
highlight   Normal       ctermbg=none
highlight   NonText      ctermbg=none
highlight   SpecialKey   guibg=NONE
highlight   lCursor      guifg=NONE     guibg=#D75F5F

