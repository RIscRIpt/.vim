let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_structs           = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1
"let g:go_auto_type_info             = 1
let g:go_fmt_experimental            = 1
if has('win32')
    let g:go_fmt_command                 = expand("$GOBIN/goimports.exe")
    let g:go_gotags_bin                  = expand("$GOBIN/gotags.exe")
else
    let g:go_fmt_command                 = expand("$GOBIN/goimports")
    let g:go_gotags_bin                  = expand("$GOBIN/gotags")
endif

augroup GoMappings
    autocmd!

    au FileType go nmap <leader>gr <Plug>(go-run)
    au FileType go nmap <leader>gb <Plug>(go-build)
    au FileType go nmap <leader>gt <Plug>(go-test)
    au FileType go nmap <leader>gc <Plug>(go-coverage)

    au FileType go nmap <Leader>dfs <Plug>(go-def-split)
    au FileType go nmap <Leader>dfv <Plug>(go-def-vertical)
    au FileType go nmap <Leader>dft <Plug>(go-def-tab)

    au FileType go nmap <Leader>gdh <Plug>(go-doc)
    au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)

    au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)

    au FileType go nmap <Leader>l <Plug>(go-implements)
    au FileType go nmap <Leader>i <Plug>(go-info)
    au FileType go nmap <Leader>r <Plug>(go-rename)
augroup END
