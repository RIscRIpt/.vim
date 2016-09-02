let $VIMDIR  = expand("~/.vim")
let $MYVIMRC = expand($VIMDIR . "/init.vim")

set runtimepath-=~/vimfiles
set runtimepath-=~/vimfiles/after
let &runtimepath = $VIMDIR . ',' . &runtimepath

source $MYVIMRC

