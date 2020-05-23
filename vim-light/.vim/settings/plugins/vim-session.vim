" --- Plugin xolox/vim-session
let g:session_autoload = 'yes'              " Set for auto load the session file
let g:session_autosave = 'no'              " Set auto save and auto create the session file
let g:session_directory = './'              " Set defaul directory to store of session. Aslo you can save inn in $HOME $HOME/.vim/sessions
let g:session_persist_colors = 0            " Allow don't save themes and colors
let g:session_default_name = '.session'     " Set name for session name


" If session file exists then will be apply the autosave session.
if filereadable(".session.vim")
    let g:session_autosave = 'yes'            " Set auto save and auto create the session file
else
    let g:session_autosave = 'no'              " Set auto save and auto create the session file
endif



" Example function
function! CheckOnSessionFileExist()
    if filereadable(".session.vim")
        echo "Session exists"
    else
        echo "Session not found"
    endif
endfunction


