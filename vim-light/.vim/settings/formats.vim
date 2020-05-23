" ---- Custom files format ----

" Python format
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix


" JavaScript format
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2 


" MarkDown format
au BufNewFile,BufRead *.md
    \ set wrap nolist
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4 
    inoremap № #
