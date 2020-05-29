" Auto install vim-plug
"
" packloadall                                     " Allowed in VIM >= 8.2. This options is load all packages in the 'start' directory under each entry in 'packpath'.

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" --- Tools ---

" Plugin allow quick search files and open them
if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf'
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif
Plug 'junegunn/fzf.vim', {
         \ 'on': [
             \ 'Ag',
             \ 'Rg',
             \ 'FZF',
             \ 'Files',
             \ 'Buffers',
             \ 'Commits',
             \ 'BCommits',
             \ 'Tags',
             \ 'BTags',
             \ 'History',
             \ 'Lines',
             \ 'BLines',
             \ 'Marks'
         \ ] }
Plug 'majutsushi/tagbar'                " Plugin shows tag bar for quickly move around of file content
Plug 'scrooloose/nerdtree'              " Plugin shows panel with files
Plug 'xolox/vim-misc'                   " Plugin need for vim-session
Plug 'xolox/vim-notes'                  " Plugin makes it easy to manage your notes in Vim

" --- Sessions ---
Plug 'xolox/vim-session'                " Automated Vim session management with file auto-save and persistent undo history
" Plug 'thaerkh/vim-workspace'            " Automated Vim session management with file auto-save and persistent undo history
" Plug 'mhinz/vim-startify'               " This plugin provides a start screen for Vim and Neovim.


" --- MarkDown ---
Plug 'lvht/tagbar-markdown'             " Plugin allows work Tagbar with MarkDown format
Plug 'suan/vim-instant-markdown'        " Plugin allows view render MarkDown and view in your browser

" --- Dictionaries ---
Plug 'voldikss/vim-translator'

" --- VCS ---
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- Edit ---
Plug 'matze/vim-move'                   " Plugin helps move lines Up or Down
Plug 'chun-yang/auto-pairs'             " Plugin allows to insert or delete brackets, parens, quotes in pair
Plug 'tpope/vim-surround'               " Plugin allows change quotas from ' on \"
Plug 'scrooloose/nerdcommenter'         " Plugin allows to make comments
Plug 'terryma/vim-multiple-cursors'     " Plugin allows to use multiple cursor like in Sublime Text
Plug 'kshenoy/vim-signature'            " Plugin to place, toggle and display marks.
Plug 'unblevable/quick-scope'           " Plugin make higlight chars for find key (F, f, T, t) 

" --- Code ---
Plug 'mattn/emmet-vim'                  " Plugin helps work with html tags. Look emmet in Yandex
Plug 'ap/vim-css-color'                 " Plugin shows bg color for css color style
Plug 'Yggdroot/indentLine'              " This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
Plug 'editorconfig/editorconfig-vim'    " This is an EditorConfig plugin for Vim.

" --- GUI ---
Plug 'vim-airline/vim-airline'          " Cool Status Bar
Plug 'vim-airline/vim-airline-themes'   " Addetional themes for vim-airline
" Plug 'itchyny/lightline.vim'            " A light and configurable statusline/tabline plugin for Vim
Plug 'ryanoasis/vim-devicons'           " This plugins set many icons for NERDTree and etc.

" -- Themes --
Plug 'NLKNguyen/papercolor-theme'       " Cool Theme
Plug 'morhetz/gruvbox'                  " Cool Theme
Plug 'doums/darcula'                    " Cool Theme like in JetBrains
Plug 'ayu-theme/ayu-vim'                " Cool Theme
Plug 'dracula/vim', { 'as': 'dracula' } " Cool Theme
call plug#end()

source $HOME/.vim/settings/plugins/vim-move.vim
source $HOME/.vim/settings/plugins/vim-airline.vim
source $HOME/.vim/settings/plugins/vim-airline-themes.vim
source $HOME/.vim/settings/plugins/lightline.vim
source $HOME/.vim/settings/plugins/nerdcommenter.vim
source $HOME/.vim/settings/plugins/fzf.vim
source $HOME/.vim/settings/plugins/nerdtree.vim
source $HOME/.vim/settings/plugins/vim-surround.vim
source $HOME/.vim/settings/plugins/tagbar.vim
source $HOME/.vim/settings/plugins/vim-gitgutter.vim
source $HOME/.vim/settings/plugins/nerdtree-git-plugin.vim
source $HOME/.vim/settings/plugins/vim-translator.vim
source $HOME/.vim/settings/plugins/vim-multiple-cursors.vim
source $HOME/.vim/settings/plugins/emmet-vim.vim
source $HOME/.vim/settings/plugins/vim-instant-markdown.vim
source $HOME/.vim/settings/plugins/quick-scope.vim
source $HOME/.vim/settings/plugins/indentline.vim
" source $HOME/.vim/settings/plugins/vim-workspace.vim
source $HOME/.vim/settings/plugins/vim-session.vim
source $HOME/.vim/settings/plugins/editorconfig-vim.vim
source $HOME/.vim/settings/plugins/vim-notes.vim

" Themes: Just uncomment what you need and comment others
source $HOME/.vim/settings/plugins/themes-papercolor.vim
" source $HOME/.vim/settings/plugins/themes-ayu.vim
" source $HOME/.vim/settings/plugins/themes-gruvbox.vim
" source $HOME/.vim/settings/plugins/themes-darcula.vim
" source $HOME/.vim/settings/plugins/themes-dracula.vim
