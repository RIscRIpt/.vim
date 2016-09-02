augroup EasyAlternate
    autocmd!
    autocmd BufLeave   * call EasyAlternate('b')
    autocmd TabLeave   * call EasyAlternate('t')
augroup END

let s:prev = ''

function! EasyAlternate(...)
    if a:0 == 0
        if s:prev == 't'
            execute "tabn " . s:prev_tab
        elseif s:prev == 'b'
            execute "b " . s:prev_buf
        endif
    else
        if a:1 == 't'
            let s:prev_tab = tabpagenr()
        elseif a:1 == 'b' && len(tabpagebuflist()) == 1
            let s:prev_buf = bufnr("%")
        endif
        let s:prev = a:1
    endif
endfunction

nnoremap <silent> <leader><leader> :call EasyAlternate()<CR>
vnoremap <silent> <leader><leader> :call EasyAlternate()<CR>

