" --- Plugin 'voldikss/vim-translator'
"  let g:python3_host_prog = /path/to/python_executable
let g:translator_target_lang = 'ru'
let g:translator_source_lang = 'en'
let g:translator_source_lang = 'google'
" Keybindings
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>x <Plug>TranslateX

