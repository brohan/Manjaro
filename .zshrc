# Manjaro zsh config
# Pre-reqs: nerd fonts complete (via AUR / pamac), zplugin, neofetch


### Added by Zplugin's installer
source '/home/brohan/.zplugin/bin/zplugin.zsh'
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
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_manjaro dir vcs)

# Right Command Prompt Settings
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

##### | END POWERLEVEL10K SETTINGS | #####



# Aliases
# Some more basic aliases
alias ls='ls --color=auto'
alias vi='vim'
alias ll='ls -lh'
alias la='ls -lAh'
alias l='ls -lah'
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

neofetch
set -o vi
