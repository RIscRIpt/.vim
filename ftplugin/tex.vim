setlocal wrap
setlocal spell
setlocal spelllang=ru,en

inoremap <buffer> <M-c> <Esc>[s1z=`]a
nnoremap <buffer> <M-c> 1z=

if has("gui_running")
    setlocal guifont=PT\ Mono\ 12
endif

