# --- Related to 'd' function, must be before p10k ---
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

############
### ENVS ###
############
export DOTFILE_CONFIG_HOME=$HOME/my_dotfile_config

export ZSH_HOME=$DOTFILE_CONFIG_HOME/zsh
export ZSH_PLUGINS_FOLDER=$ZSH_HOME/plugins
export ZSH_THEMES_FOLDER=$ZSH_HOME/themes

#############
## HISTORY ##
#############
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory
HISTSIZE=1000

# How many commands history will save on file
SAVEHIST=1000

# History won't save duplicates
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search
setopt HIST_FIND_NO_DUPS

#############
## PLUGINS ##
#############
source $ZSH_PLUGINS_FOLDER/.zsh_plugins

#############
### THEME ###
#############
source $ZSH_THEMES_FOLDER/.zsh_theme

#############
# FUNCTIONS #
#############

# Directory function ('d') from oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/directories.zsh
function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
