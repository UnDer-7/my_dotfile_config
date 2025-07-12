# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

############
### ENVS ###
############
export ZSH=$HOME/my_dotfile_config/zsh

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

############
### P10K ###
############
export P10K_PATH=$HOME/my_dotfile_config/p10k

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $P10K_PATH/.p10k.zsh ]] || source $P10K_PATH/.p10k.zsh
