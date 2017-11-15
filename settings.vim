""" Mappings
"""" All/mixed modes
" F13 = Esc
noremap <F13> <ESC>
inoremap <F13> <ESC>

" Swap visual and visual-block modes
nnoremap    v   <C-v>
nnoremap <C-v>     v
vnoremap    v   <C-v>
vnoremap <C-v>     v

" Easier enter inserter
inoremap <S-Enter> <C-o>O
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k

" Enable Ctrl-c / Ctrl-v
imap <C-v> <S-Insert>
vmap <C-c> <C-Insert>

" Ctrl-S for save
noremap <C-s> :up<CR>
inoremap <C-s> <C-o>:up<CR>

" Window controls
noremap <silent> <A-=> <C-w>=
noremap <silent> <A-j> <C-w>-
noremap <silent> <A-k> <C-w>+
noremap <silent> <A-h> <C-w><
noremap <silent> <A-l> <C-w>>
noremap <silent> <A-w> <C-w><C-w>
noremap <silent> <A-q> <C-w><S-w>
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-h> <C-w>h
noremap <silent> <C-l> <C-w>l

"""" Leader mappings
" Sourcing vimscript lines / selections
nnoremap <leader>src :source %<CR>
vnoremap <leader>src "Xy:@"X<CR>gv

"""" Normal mode
" Up-join lines
nnoremap K ddpkJ

" Tab-like bindings for buffers
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

" Easier tab switching
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Easier browsing
nnoremap <Up>    <C-y>
nnoremap <Right> zl
nnoremap <Down>  <C-e>
nnoremap <Left>  zh

" Easier cprev/cnext browsing
nnoremap <A-[> :cprev<CR>
nnoremap <A-]> :cnext<CR>
nnoremap <A-\> :cclose<CR>

" Reload file
nnoremap <A-r>   :e<CR>G

" Run :make
nnoremap <A-m> :make<CR>

"""" Leader mappings
" Enter substitute command
nnoremap <leader>ss :%s//

" Hide highlight
nnoremap <silent> <leader>hh :noh<CR>

" Set working directory
nnoremap <leader>cd :cd %:p:h <bar> :pwd<CR>
nnoremap <leader>lcd :lcd %:p:h <bar> :pwd<CR>

" Edit my vimrc
nnoremap <leader>ev :tabe $MYVIMRC<CR>

" Repeat last command
nnoremap <leader>. @:


"""" Command mode
" sudo :w
cnoremap w!! w !sudo tee > /dev/null %

""" Custom functions
"""" Strip trailing whitespaces
function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

nnoremap <leader>sw :call StripTrailingWhitespaces()<CR>
vnoremap <leader>sw :call StripTrailingWhitespaces()<CR>

"""" Easy alternate
augroup EasyAlternate
    autocmd!
    autocmd BufLeave   * call EasyAlternate('b')
    autocmd TabLeave   * call EasyAlternate('t')
augroup END

let s:ea_prev_view = ''

function! EasyAlternate(...)
    if a:0 == 0
        if s:ea_prev_view == 't'
            execute "tabn " . s:prev_tab
        elseif s:ea_prev_view == 'b'
            execute "b " . s:prev_buf
        endif
    else
        if a:1 == 't'
            let s:prev_tab = tabpagenr()
        elseif a:1 == 'b' && len(tabpagebuflist()) == 1
            let s:prev_buf = bufnr("%")
        endif
        let s:ea_prev_view = a:1
    endif
endfunction

nnoremap <silent> <leader><leader> :call EasyAlternate()<CR>
vnoremap <silent> <leader><leader> :call EasyAlternate()<CR>


""" Plugin settings
"""" airline.vim

set noshowmode
set laststatus=2

""""" Symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1

""""" Extensions
let g:airline#extensions#keymap#enabled = 0

"""""" Branch
let g:airline#extensions#branch#format = 2

"""""" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 2
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nnoremap <leader>` :tabfirst<CR>
nnoremap <leader>0 :tablast<CR>

"""" autopairs.vim
let g:AutoPairsShortcutToggle=''
let g:AutoPairsShortcutJump="<M-\'>"
let g:AutoPairsShortcutBackInsert=''

"""" easymotion.vim

"""" echodoc.vim
let g:echodoc_enable_at_startup = 1

"""" fzf.vim
let g:fzf_launcher = 'gvim-urxvtc-fzf "%s"'

nnoremap <leader>ff :FZF<CR>

"""" go.vim
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


"""" haskell.vim
let g:haddock_browser="/usr/bin/chromium"

"""" schlepp.vim
vmap <S-Up>    <Plug>SchleppIndentUp
vmap <S-Down>  <Plug>SchleppIndentDown
vmap <Up>      <Plug>SchleppUp
vmap <Down>    <Plug>SchleppDown
vmap <Left>    <Plug>SchleppLeft
vmap <Right>   <Plug>SchleppRight
vmap D         <Plug>SchleppDup
let g:Schlepp#allowSquishingLines = 0
let g:Schlepp#allowSquishingBlocks = 0
let g:Schlepp#reindent = 1

"""" netrw.vim
" Disable netrw
" let g:loaded_netrw = 1
" let g:loaded_netrwPlugin = 1
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%a %d %b %Y %T"
let g:netrw_winsize=-32

"""" syntastic.vim
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_style_error_symbol = "\u2712"
let g:syntastic_style_warning_symbol = "\u270E"
let g:syntastic_filetype_map  = { "rnoweb": "tex" }

"""" tabular.vim
nnoremap <leader>t :Tabularize /
vnoremap <leader>t :Tabularize /

"""" tagbar.vim
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 1

noremap <A-t> :TagbarToggle<CR>

"""" tsuquyomi.vim
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"""" vimfiler.vim
let g:vimfiler_as_default_explorer = 1

noremap <A-n> :VimFilerExplorer<CR>

"""" vimtex.vim
let g:vimtex_delim_toggle_mod_list = [
            \ ['\left', '\right'],
            \ ['\bigl', '\bigr']
            \]

"let g:vimtex_view_use_temp_files = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_ignore_all_warnings = 1

"""" youcompleteme.vim
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_filepath_completion_use_working_dir = 1

""
""" modeline
""
"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
""

