" --- Plugin vim-gitgutter
" let g:gitgutter_git_executable = '/usr/bin/git'
autocmd BufWritePost * GitGutter
highlight link diffAdded DiffAdd
highlight link diffChanged DiffChange
highlight link diffRemoved DiffDelete

