set completeopt=menuone

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_cursor_hold_i = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_multibyte_completion = 1
let g:neocomplete#data_directory = expand("$VIMDIR/nc_cache/")

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h[a-zA-Z\u0100-\uFFFF]*'

inoremap <silent> <expr><C-d>     neocomplete#undo_completion()
inoremap <silent> <expr><C-c>     neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>neocomplete_cr_function()<CR>
function! s:neocomplete_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

function! s:neocomplete_check_backspace()
    let col = col('.') - 1
    return !col || index([' ', '	', ','], getline('.')[col - 1]) != -1
endfunction

inoremap <silent> <expr><Tab>     pumvisible() ? "\<C-n>" : (<SID>neocomplete_check_backspace() ? "\<Tab>" : neocomplete#start_manual_complete())
inoremap <silent> <expr><S-Tab>   pumvisible() ? "\<C-p>" : (<SID>neocomplete_check_backspace() ? "\<Tab>" : neocomplete#start_manual_complete())
inoremap <silent> <expr><Space>   pumvisible() ? "\<C-y>" : "\<Space>"
inoremap <silent> <expr><C-Space> neocomplete#start_manual_complete()
inoremap <silent> <expr><C-h>     neocomplete#smart_close_popup()."\<C-h>"
inoremap <silent> <expr><BS>      neocomplete#smart_close_popup()."\<C-h>"

augroup neocomplete_ftype
    autocmd!
    autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags
augroup END

