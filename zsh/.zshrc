export PATH=/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/bin:$HOME/.scripts:/Applications/MacVim.app/Contents/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="/Users/konstantin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        fzf
        rsync
        emoji-clock
        git 
        pj 
        docker 
        osx 
        brew 
        python 
        npm
        pip
        virtualenv 
        django 
        celery 
        themes 
        zsh-syntax-highlighting 
        zshrc_common 
        zsh-autosuggestions 
        command-time
        # zsh-completions
        )
# autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh


# Plugins Settings

# POWERLEVEL9K
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
# POWERLEVEL9K_TIME_FOREGROUND='yellow'
# POWERLEVEL9K_TIME_BACKGROUND='blue'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time load time )
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time load history time )

# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=3
# Message to display (set to "" for disable).
# ZSH_COMMAND_TIME_MSG="Время выполнения: %s sec"
ZSH_COMMAND_TIME_MSG=""
# Message color.
ZSH_COMMAND_TIME_COLOR="yellow"


# User configuration

export TERM=xterm-256color
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'
export HOMEBREW_GITHUB_API_TOKEN=
export download_dir="~/Downloads/"
export CLICOLOR=1
export VISUAL=$EDITOR
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'
#export MC_SKIN=$HOME/.mc/lib/solarized.ini


# FZF search in history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# PJ Plugin
PROJECT_PATHS=( ~/projects/ )

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias sshconfig="$EDITOR ~/.ssh/config"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias gitconfig="$EDITOR ~/.gitconfig"
alias vimconfig="$EDITOR ~/.vimrc"
alias o="open ."
alias p="ping ya.ru"
alias ppp="fzf --preview 'bat --style=numbers --color=always {} | head -500'"
alias ip="curl ipinfo.io/ip"
alias ww="curl 'wttr.in?format=4'"
alias sp='speed-test'
alias r='ranger'
