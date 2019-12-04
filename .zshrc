### CHASE'S .ZSHRC ###

## DEPENDENCIES:
## Oh-My-Zsh <https://github.com/ohmyzsh/ohmyzsh>
## Powerlevel9k <https://github.com/Powerlevel9k/powerlevel9k>
## awesome-terminal-fonts <https://github.com/gabrielelana/awesome-terminal-fonts>

# Fix colors
export TERM="xterm-256color"

# Path to oh-my-zsh installation
export ZSH="/home/gizmoz/.oh-my-zsh"

# Font mode for PL9K
POWERLEVEL9K_MODE='awesome-fontconfig'

# Load the PL9K theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{blue}╭─'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{blue}╰>%f '
POWERLEVEL9K_DISABLE_RPROMPT=true

# VCS icons
P9K_VCS_GIT_ICON=$'\uf1d2 '
P9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
P9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
P9K_VCS_BRANCH_ICON=$''
P9K_VCS_STAGED_ICON=$'\uf055'
P9K_VCS_UNSTAGED_ICON=$'\uf421'
P9K_VCS_UNTRACKED_ICON=$'\uf00d'
P9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
P9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# VCS config
P9K_VCS_SHOW_CHANGESET=false

# OMZ plugins to load
plugins=(git)

# Usefull aliases
alias rm='rm -i'
alias ls='lsd --group-dirs first'
alias vi='vim'

save_aliases=$(alias -L) # save current aliases

autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

eval $save_aliases; unset save_aliases # use only the aliases set before loading omz

##EOF##
