# --- Related to 'd' function, must be before p10k ---
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS

autoload -Uz compinit
compinit

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

# ZSH
export ZSH_HOME=$DOTFILE_CONFIG_HOME/zsh
export ZSH_PLUGINS_FOLDER=$ZSH_HOME/plugins
export ZSH_THEMES_FOLDER=$ZSH_HOME/themes
export ZSH_FUNCTIONS_FOLDER=$ZSH_HOME/functions
export ZSH_ALIAS_FOLDER=$ZSH_HOME/alias

# VIM
export VIM_HOME=$DOTFILE_CONFIG_HOME/vim

#############
#### VIM ####
#############
export VIMINIT="source $VIM_HOME/.vimrc"

###############
# ZSH OPTIONS #
###############
export HISTFILE=$ZSH_HOME/.zsh_history

# How many commands zsh will load to memory
HISTSIZE=1000

# How many commands history will save on file
SAVEHIST=1000

# History won't show duplicates on search
setopt HIST_FIND_NO_DUPS

setopt EXTENDED_HISTORY       # record timestamp of command in HISTFILE
setopt HIST_EXPIRE_DUPS_FIRST # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt HIST_IGNORE_DUPS       # ignore duplicated commands history list
setopt HIST_IGNORE_SPACE      # ignore commands that start with space
setopt HIST_VERIFY            # show command with history expansion to user before running it
setopt SHARE_HISTORY          # share command history data

#############
## PLUGINS ##
#############
source "$ZSH_PLUGINS_FOLDER"/.zsh_plugins.zsh

#############
### THEME ###
#############
source "$ZSH_THEMES_FOLDER"/.zsh_theme.zsh

#############
# FUNCTIONS #
#############
# Automatically load all function files from the functions directory
for function_file in "$ZSH_FUNCTIONS_FOLDER"/*.zsh; do
  source "$function_file"
done

#############
### ALIAS ###
#############
# Automatically load all alias files from the alias directory
for alias_file in "$ZSH_ALIAS_FOLDER"/*.zsh; do
  source "$alias_file"
done
