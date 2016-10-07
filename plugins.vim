source $VIMDIR/vim-plug/plug.vim

call plug#begin(expand($VIMDIR . '/plugged'))

" Color schemes
Plug 'altercation/vim-colors-solarized'

" Visual
Plug 'vim-airline/vim-airline-themes' | Plug 'vim-airline/vim-airline'

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

Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
"Plug 'SirVer/ultisnips'

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

" Tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'

call plug#end()

