let g:mapleader = "\<Space>"                            " set leader key
nnoremap U <C-r>                                        " Use `u` to undo, use `U` to redo, mind = blown
noremap <C-s> :update<cr>                               " Save write
nnoremap <C-t> :tabnew <CR>                             " Create a new tab
map <leader>f "zyiw:exe "Rg ".@z.""<CR>                  " Search via Rg in project
map <leader>F "zyiw:exe "Ag ".@z.""<CR>                  " Search via Ag in project

" --- Plugins
" Git
nmap <leader>g :Gstatus <CR>


" FZF
map <leader><CR> :Files <CR>
map \<CR> :Buffers <CR>

" Tagbar
nmap « :TagbarToggle<CR>

" NERDTree
nmap <leader>\ : NERDTreeToggle<CR>
map <C-\> :NERDTreeToggle<CR>

" NERDCommenter
nmap ÷ <plug>NERDCommenterInvert                       " ALt + / (OSX)
xmap ÷ <plug>NERDCommenterInvert                       " ALt + / (OSX)
nmap “ <plug>NERDCommenterInvert                       " Alt + ? (OSX Rus)
xmap “ <plug>NERDCommenterInvert                       " Alt + ? (OSX Rus)

" suan/vim-instant-markdown
map <leader>M :InstantMarkdownStop<CR>                 " Stop Markdown server
map <leader>m :InstantMarkdownPreview<CR>              " Stop Markdown server


" --- Plug 'voldikss/vim-translator'
" Display translation in a window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
" nmap <silent> <Leader>t <Plug>Translate
" vmap <silent> <Leader>t <Plug>TranslateV
" Replace the text with translation
" nmap <silent> <Leader>r <Plug>TranslateR
" vmap <silent> <Leader>r <Plug>TranslateRV
" Translate the text in clipboard
" nmap <silent> <Leader>x <Plug>TranslateX




" Disable Arrow keys!!!
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>


" Move line up/down 
" nnoremap <C-S-j> :m .+1<CR>==
" nnoremap <C-S-k> :m .-2<CR>==
" inoremap <C-S-j> <Esc>:m .+1<CR>==gi
" inoremap <C-S-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-S-j> :m '>+1<CR>gv=gv
" vnoremap <C-S-k> :m '<-2<CR>gv=gv
" nnoremap <C-S-Down> :m .+1<CR>==
" nnoremap <C-S-Up> :m .-2<CR>==
" inoremap <C-S-Down> <Esc>:m .+1<CR>==gi
" inoremap <C-S-Up> <Esc>:m .-2<CR>==gi
" vnoremap <C-S-Down> :m '>+1<CR>gv=gv
" vnoremap <C-S-Up> :m '<-2<CR>gv=gv


" Auto insert brackets
" imap { {}
" imap [ []
" imap ( ()


" Use tab and shift tab to indent and de-indent code
"nnoremap <Tab>   >>
"nnoremap <S-Tab> <<
"vnoremap <Tab>   >><Esc>gv
"vnoremap <S-Tab> <<<Esc>gv
"inoremap <S-Tab> <C-d>
