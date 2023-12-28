# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/liqian/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="aussiegeek"
# ZSH_THEME="ys"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

#disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# programs and system
# alias chrome="google-chrome-stable"
#
# Environment Setup
export CLICOLOR=1

# default editor
export EDITOR=nvim

# Terraform Config
# export TF_VAR_vsphere_password=$(cat ~/.local/creds/vsphere.cred.txt)
# Dockerhub config
# export REGISTRY_SERVER=$(cat ~/.local/creds/dockerhub.creds.server.txt)
# export REGISTRY_USER=$(cat ~/.local/creds/dockerhub.creds.user.txt)
# export REGISTRY_EMAIL=$(cat ~/.local/creds/dockerhub.creds.email.txt)
# export REGISTRY_PASS=$(cat ~/.local/creds/dockerhub.creds.pass.txt)
# GITHUB
# export GITHUB_TOKEN=$(cat ~/.local/creds/github.creds.token.txt)
# export GHCR_TOKEN=$(cat ~/.local/creds/github.creds.token.txt)
#
# PATH
export PATH="/opt/homebrew/bin:$PATH"
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

# Alias
alias lg='lazygit'
alias cs='cowsay'
# programs and system
alias chrome="google-chrome-stable"
alias code="codium"
# alias ll="lsd -al --color never"
alias ll="lsd -al"
alias du="du -d 1 -h"
alias kill="killall"
alias vim="nvim"
alias kill="killall"
alias vim="nvim"
# shutdown and reboot
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
# kubernetes related
alias k="kubectl"
alias token='kubectl -n kube-system describe secret dashboard-admin | grep ^token'
# journalctl
alias journal='journalctl -xefu'
# tmux
# ln -sf $HOME/.config/tmux/.tmux.conf $HOME/.tmux.conf
alias t='tmux'
# git
alias g="git"
alias gs="git status"
alias gl="git log --all --decorate --oneline --graph"

# Applications
# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# rust cargo
source $HOME/.cargo/env
# PYENV init
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/liqian/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/liqian/miniforge3/etc/profile.d/conda.sh" ]; then
#         . "/Users/liqian/miniforge3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/liqian/miniforge3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
