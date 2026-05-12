# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
alias vim="NVIM_APPNAME=svim nvim"
alias lvim="NVIM_APPNAME=lazyvim nvim"
alias cvim="NVIM_APPNAME=codevim nvim"
export EDITOR=vim

# function nvims() {
#   items=("default" "lazyvim" "svim")
#   config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
#   if [[ -z $config ]]; then
#     echo "Nothing selected"
#     return 0
#   elif [[ $config == "default" ]]; then
#     config=""
#   fi
#   NVIM_APPNAME=$config nvim $@
# }
# 
# bindkey -s ^a "nvims\n"

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
export PATH="$PATH:$HOME/.local/bin"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

# ---- Alias ----
alias oo='cd $HOME/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/ideaverse'
alias ollamass='OLLAMA_ORIGINS=moz-extension://*,chrome-extension://*,safari-web-extension://*,app://obsidian.md* ollama serve
'
# programs and system
# alias ll="lsd -al --color never"
# alias ll="lsd -al"
alias la='eza -aloF --header --icons --sort=type --time-style "+%Y-%m-%d %H:%M"'
alias ll='eza -loF --header --icons --sort=type --time-style "+%Y-%m-%d %H:%M"'
alias ls='eza --color --sort=type'
alias du1="du -d 1 -h"
alias kill="killall"
alias chrome="google-chrome-stable"
alias code="codium"
alias lg='lazygit'
alias cs='cowsay'
alias ts='sudo tailscale'
alias cc='claude'
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
# snips
alias snips="ssh snips.sh"

# Applications
# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# rust cargo
source $HOME/.cargo/env

# PYENV init
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# if which pyenv-virtualenv-init > /dev/null; then
#     eval "$(pyenv virtualenv-init -)"
# fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mark/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mark/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/mark/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mark/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# UV python manager
eval "$(uv generate-shell-completion zsh)"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# GPG
secret () {
        output=~/"${1}".$(date +%s).enc
        gpg --encrypt --armor --output ${output} -r 0x3C3839AF16FBEDB7 "${1}" && echo "${1} -> ${output}"
}

reveal () {
        output=$(echo "${1}" | rev | cut -c16- | rev)
        gpg --decrypt --output ${output} "${1}" && echo "${1} -> ${output}"
}

# SOLANA
export PATH="/Users/mark/.local/share/solana/install/active_release/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mark/.lmstudio/bin"

# Gemini-cli API key retreival
# export GEMINI_API_KEY=$(security find-generic-password -a "${USER}" -s "gemini_api_key" -w)
export GEMINI_API_KEY=$(security find-generic-password -a "${USER}" -s "gemini_cli" -w)

# opencode provider keys (retrieved from macOS Keychain at shell init)
export KIMI_API_KEY=$(security find-generic-password -a "${USER}" -s "kimi_api_key" -w 2>/dev/null)
export SANDBOXAI_API_KEY=$(security find-generic-password -a "${USER}" -s "sandboxai_api_key" -w 2>/dev/null)

# Added by Antigravity
export PATH="/Users/mark/.antigravity/antigravity/bin:$PATH"

# bun completions
[ -s "/Users/mark/.bun/_bun" ] && source "/Users/mark/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ---- Zoxide (better cd) ---- must stay at end of file
# Skipped inside Claude Code's Bash subshells: its snapshotted shell state
# loses `chpwd_functions+=(__zoxide_hook)`, leaving the hook unregistered;
# `cd` (aliased to z) then trips __zoxide_doctor on every command. Zoxide
# isn't useful there anyway (no human doing frecency-based jumps).
if [[ -z "$CLAUDECODE" ]]; then
    eval "$(zoxide init zsh)"
    alias cd="z"
fi
