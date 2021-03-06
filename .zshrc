#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mitch/.sdkman"
[[ -s "/Users/mitch/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mitch/.sdkman/bin/sdkman-init.sh"

export GOPATH=/Users/mitch/Go
