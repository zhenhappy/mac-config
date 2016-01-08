# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# Java HOME
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# Maven HOME
M2_HOME=~/Applications/Servers/Maven/apache-maven-3.3.9

# Gradle HOME
GRADLE_HOME=~/Applications/Servers/Gradle/gradle-2.10

# Android HOME
ADT_HOME=~/Library/Android/sdk
P_TOOLS=$ADT_HOME/platform-tools
TOOLS=$ADT_HOME/tools
ANDROID_HOME=$P_TOOLS:$TOOLS

# My Command HOME
COMMAND=~/Documents/Shell

# Export my path
export JAVA_HOME
export CLASSPATH
export ANDROID_HOME
export CLICOLOR=1
export PATH=$COMMAND:/usr/local/bin:/usr/bin:/usr/sbin:/opt/local/bin:/opt/local/sbin:$PATH

# Proxy Environment
export http_proxy=http://127.0.0.1:8087/
export https_proxy=http://127.0.0.1:8087/

# Homebrew GitHub API Token
export HOMEBREW_GITHUB_API_TOKEN=768e5d5217dc416d5d7da781026c2bd2ce2e436d

# NVM Environment
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# pyenv Environment
export PYENV_ROOT="$HOME/.pyenv"

if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi

# rbenv Environment
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias ss='export http_proxy=http://127.0.0.1:8032 https_proxy=http://127.0.0.1:8032'
alias go='export http_proxy=http://127.0.0.1:8087 https_proxy=http://127.0.0.1:8087'
alias noproxy='unset http_proxy https_proxy'
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

#alias for git
alias ga="git add ."
alias gitall="git_check_all.sh"