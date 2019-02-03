source $VIMDIR/vim-plug/plug.vim

call plug#begin(expand($VIMDIR . '/plugged'))

" Color schemes
if has('nvim')
    Plug 'iCyMind/NeoSolarized'
else
    Plug 'altercation/vim-colors-solarized'
endif
if !has('win32')
    Plug 'dylanaraps/wal.vim'
endif
Plug 'google/vim-colorscheme-primary'
Plug 'pbrisbin/vim-colors-off'
Plug 'reedes/vim-colors-pencil'

" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Editing
Plug 'easymotion/vim-easymotion'
Plug 'chrisbra/NrrwRgn'
Plug 'godlygeek/tabular'
Plug 'zirrostig/vim-schlepp'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --system-libclang --system-boost' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'SirVer/ultisnips'

Plug 'google/vim-codefmt'

Plug 'google/vim-searchindex'
Plug 'majutsushi/tagbar'
"Plug 'scrooloose/syntastic'

" Custom text objects
Plug 'PeterRincker/vim-argumentative'

" Language specific
" C++
Plug 'dawikur/algorithm-mnemonics.vim'
" GLSL
Plug 'tikhomirov/vim-glsl'
" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'garyburd/go-explorer'
" R
Plug 'jalvesaq/Nvim-R'
" HTML5
Plug 'othree/html5.vim'
" LaTeX
Plug 'lervag/vimtex'
" Graphviz
Plug 'wannesm/wmgraphviz.vim'

" Tools
Plug 'jamessan/vim-gnupg'
Plug 'google/vim-maktaba'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
if has('unix')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

call plug#end()

