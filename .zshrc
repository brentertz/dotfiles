# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bequick"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git nyan vi-mode sublime urltools)

# Use vi mode in terminal
#bindkey -v # currently using vi-mode plugin
# Remap escape in terminal vi mode
bindkey -M viins 'jj' vi-cmd-mode

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
PATH=$PATH:/usr/local/heroku/bin # Heroku Toolbelt
export JAVA_HOME=$(/usr/libexec/java_home) # Java
export ANDROID_HOME=/usr/local/opt/android-sdk # Android SDK
PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
source ~/.nvm/nvm.sh # Activate NVM
PATH=$PATH:/usr/local/share/npm/bin # Add npm bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Python VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh

# brew install curl-ca-bundle
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

export DEFAULT_USER='brent'
export EDITOR='mvim -f'

# defunkt/hub integration
eval "$(hub alias -s)"
if [ -e "$HOME/.hub.zsh_completion" ]; then
  source "$HOME/.hub.zsh_completion"
fi

# Auto load directory specific environment files
chpwd() {
  if [ -f ".env" ]; then source .env; fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Activate RVM
