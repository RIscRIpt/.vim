source $VIMDIR/vim-plug/plug.vim

call plug#begin(expand($VIMDIR . '/plugged'))

" Color schemes
if has('nvim')
    Plug 'iCyMind/NeoSolarized'
else
    Plug 'altercation/vim-colors-solarized'
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
" Plug 'cohama/lexima.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
"Plug 'tomtom/tcomment_vim'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
    Plug 'Shougo/neocomplete.vim'
endif
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
"Plug 'SirVer/ultisnips'

Plug 'google/vim-codefmt'

Plug 'google/vim-searchindex'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'

" Custom text objects
Plug 'PeterRincker/vim-argumentative'

" Language specific
" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'garyburd/go-explorer'
" LaTeX
Plug 'lervag/vimtex'
" R
Plug 'jalvesaq/Nvim-R'
" Haskell
Plug 'lukerandall/haskellmode-vim'
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
" JavaScript / TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
" Graphviz
Plug 'wannesm/wmgraphviz.vim'

" Tools
Plug 'google/vim-maktaba'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
if has('unix')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

call plug#end()

