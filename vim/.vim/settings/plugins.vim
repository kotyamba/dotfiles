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
Plug 'lvht/tagbar-markdown'             " Plugin allows work Tagbar with MarkDown format
Plug 'scrooloose/nerdtree'              " Plugin shows panel with files

" --- VCS ---
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- Edit ---
Plug 'matze/vim-move'                   " Plugin helps move lines Up or Down
Plug 'chun-yang/auto-pairs'             " Plugin allows to insert or delete brackets, parens, quotes in pair
Plug 'tpope/vim-surround'               " Plugin allows change quotas from ' on \"
Plug 'scrooloose/nerdcommenter'         " Plugin allows to make comments

" --- Code ---
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" -- Themes --
Plug 'itchyny/lightline.vim'           " A light and configurable statusline/tabline plugin for Vim
Plug 'vim-airline/vim-airline'          " Cool Status Bar
Plug 'vim-airline/vim-airline-themes'   " Addetional themes for vim-airline
Plug 'NLKNguyen/papercolor-theme'       " Cool Theme

call plug#end()

source $HOME/.vim/settings/plugins/vim-move.vim
source $HOME/.vim/settings/plugins/vim-airline.vim
source $HOME/.vim/settings/plugins/vim-airline-themes.vim
source $HOME/.vim/settings/plugins/lightline.vim
source $HOME/.vim/settings/plugins/nerdcommenter.vim
source $HOME/.vim/settings/plugins/fzf.vim
source $HOME/.vim/settings/plugins/coc.vim
source $HOME/.vim/settings/plugins/nerdtree.vim
source $HOME/.vim/settings/plugins/vim-surround.vim
source $HOME/.vim/settings/plugins/tagbar.vim
source $HOME/.vim/settings/plugins/vim-gitgutter.vim
source $HOME/.vim/settings/plugins/nerdtree-git-plugin.vim
