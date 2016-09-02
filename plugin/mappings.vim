"""""""""""""""""""""""""""""""" All/mixed modes
" Swap ; and :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Swap visual and visual-block modes
nnoremap    v   <C-v>
nnoremap <C-v>     v
vnoremap    v   <C-v>
vnoremap <C-v>     v

" Enable Ctrl-c / Ctrl-v
imap <C-v> <S-Insert>
vmap <C-c> <C-Insert>

"""""""""""""""" Leader mappings
" Sourcing vimscript lines / selections
nnoremap <leader>src :source %<CR>
vnoremap <leader>src "Xy:@"X<CR>gv

"""""""""""""""""""""""""""""""" Normal mode
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

"""""""""""""""" Leader mappings
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

nnoremap <A-[> :cprev<CR>
nnoremap <A-]> :cnext<CR>
nnoremap <A-\> :cclose<CR>

noremap <C-s> :up<CR>
inoremap <C-s> <C-o>:up<CR>

nnoremap <A-r>   :e<CR>G

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

"vmap <expr> <LEFT>  DVB_Drag('left')
"vmap <expr> <RIGHT> DVB_Drag('right')
"vmap <expr> <DOWN>  DVB_Drag('down')
"vmap <expr> <UP>    DVB_Drag('up')
"vmap <expr> D       DVB_Duplicate()
"let g:DVB_TrimWS = 1

noremap <A-n> :Lexplore<CR>
noremap <A-t> :TagbarToggle<CR>
"nnoremap <leader>ff :FufFile<CR>
"nnoremap <leader>fb :FufBuffer<CR>
"nnoremap <leader>fl :FufLine<CR>
"nnoremap <leader>fc :FufChangeList<CR>


inoremap <S-Enter> <C-o>O
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k


"inoremap <expr> <C-Space> pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : ''
"inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""""""""""""""""""""""""" Insert mode
" jk = ESC, ESC = Ctrl+^
inoremap jk <ESC>
inoremap <ESC> <C-^>

"""""""""""""""""""""""""""""""" Command mode
" sudo :w
cnoremap w!! w !sudo tee > /dev/null %

