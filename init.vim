scriptencoding utf-8
set encoding=utf-8

source $VIMDIR/plugins.vim

" Basic vim setup
let &directory=expand($VIMDIR . "/swpfiles/")

filetype plugin indent on
syntax on

set backspace=indent,eol,start

let g:solarized_termcolors = 256
colorscheme solarized

if has("gui_running")
    source $VIMDIR/gui.vim
    set background=light
    set visualbell
else
    set background=dark
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

let mapleader = "\<Space>"

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

set showcmd
set number
set relativenumber
set ruler
set autoindent
set nowrap
set foldmethod=marker
"set cursorline
"set cursorcolumn
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set colorcolumn=80
"call matchadd('ColorColumn', '\%80v')
set hlsearch
set incsearch
set hidden
set scrolloff=8
set listchars=tab:\¦\ ,trail:·,nbsp:░
set list
highlight SpecialKey guibg=NONE

set cryptmethod=blowfish2

"
" auto-pairs settings
let g:AutoPairsShortcutJump = ''
"let g:AutoPairsFlyMode = 1

