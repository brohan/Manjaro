# Manjaro zsh config
# Pre-reqs: nerd fonts complete (via AUR / pamac), zplugin, neofetch


### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk



##### Start Zplugin config

## This section set up to use OMZ themes

# OMZ themes use this git library
zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin cdclear -q # <- forget completions provided up to this moment

# most themes use this to set the prompt
setopt promptsubst 
setopt autocd #no need to use 'cd' to change directories
# end

# | CURRENT THEME: Powerlevel10k | #
POWERLEVEL9K_MODE='nerdfont-complete' # fonts must be called before theme that uses them
zplugin ice wait"0" lucid
zplugin light romkatv/powerlevel10k

## End OMZ theme section

#  | completions | #
zplugin ice wait"0" lucid
zplugin light zsh-users/zsh-completions

# | fast syntax highlighting | #
zplugin ice wait"0" lucid
zplugin light zdharma/fast-syntax-highlighting

# | colored man-pages | #
zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

### zplugin finalization

autoload -Uz compinit
compinit
 
zplugin cdreplay -q

### end of zplugin finalization

##### End Zplugin 


##### | POWERLEVEL10K SETTINGS | #####

### Left Command Prompt Settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_CUSTOM_MANJARO="echo -n '\uf312'"
POWERLEVEL9K_CUSTOM_MANJARO_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_MANJARO_BACKGROUND="green4"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_manjaro vi_mode dir vcs)

# Right Command Prompt Settings
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT='H:M'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history ip vpn_ip)

##### | END POWERLEVEL10K SETTINGS | #####



# Aliases
# Some more basic aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lAh'
alias l='ls'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias vi='vim'
alias grep='grep --color'
alias -g G='| egrep '
alias -g C='clear'

neofetch
bindkey -v
export KEYTIMEOUT=1
