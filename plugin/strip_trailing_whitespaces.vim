function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

nnoremap <leader>sw :call StripTrailingWhitespaces()<CR>
vnoremap <leader>sw :call StripTrailingWhitespaces()<CR>

