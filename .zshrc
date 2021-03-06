#############################################################
# If you come from bash you might have to change your $PATH.#
# export PATH=$HOME/bin:/usr/local/bin:$PATH                #
#############################################################

#######################################
# Path to your oh-my-zsh installation.#
  export ZSH="$HOME/.oh-my-zsh"
##___________________________________##

###############################################################
#!!!!!!!!!!!!!!!!!!!!!!!!!!!themas!!!!!!!!!!!!!!!!!!!!!!!!!!!!#
###############################################################
 # __________________________________________________________#
 #    agnoster|awesomepanda|cloud|crunch|darkblood|wezm      #
 #    theunraveler                                           #               
###############################################################
#####https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#####
                    ZSH_THEME="agnoster"
##___________________________________________________________##

###############################################################
# Set list of themes to pick from when loading at random      #
# Setting this variable when ZSH_THEME=random will            #
# cause zsh to load                                           #
# a theme from this variable instead of looking               #
# in ~/.oh-my-zsh/themes/                                     #
# If set to an empty array, this variable will have no effect.#

#   ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
## __________________________________________________________## 

###############################################################
# Uncomment the following line to use case-sensitive 
# completion.
#                  CASE_SENSITIVE="true"
##___________________________________________________________##


#####
# Uncomment the following line to use 
# hyphen-insensitive completion.
# Case-sensitive completion must 
# be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

#####
# Uncomment the following line to disable
# bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

#####
# Uncomment the following line to change
# how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

#####
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

#####
# Uncomment the following line to
# disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

#####
# Uncomment the following line to
# enable command auto-correction.
# ENABLE_CORRECTION="true"

#####
# Uncomment the following line to display red 
# dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

#####
# Uncomment the following line if you want to disable 
# marking untracked files
# under VCS as dirty. This makes repository status check 
# for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

#####
# Uncomment the following line if you want to
# change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime
# function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

#####
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#####
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'

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

# Set personal aliases, overriding those
# provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be
# placed here, though oh-my-zsh
# users are encouraged to define aliases
# within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


###############################################################
 #!!!!!!!!!!!!!!!!!!!!!!!!!=ALIAS=!!!!!!!!!!!!!!!!!!!!!!!!!!!#
###############################################################

# ( Keyboard pt-br ) #
alias ptbr='setxkbmap -model abnt2 -layout br'

# ( Open gitkraken ) #
alias start_gitkraken='$HOME/gitkraken/./gitkraken'

# ( Detects second monitor ) #
alias display_redetect="
    xrandr --output DP-1 --auto &&
    xrandr --output HDMI-2 --auto &&
    xrandr --output DP-1 --left-of HDMI-2
"

# ( Clear terminal output ) #
alias cls="clear"

# ( Listener ) #
alias lsa="ls -a"

# ( Upgrade Linux ) #
alias upgrade-lx="sudo apt update && sudo apt dist-upgrade"

# ( Fzf - skips search files ) #
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}" | fzf'
# Open nvim on fzfi
alias vifi='nvim $(fzfi)'

# Open Bluetooth
alias blue-start='systemctl start bluetooth'


#--------------------------------------------------------------#
# (Edite .zshrc) #
alias zsh-config="vim $HOME/.zshrc"

# (Loading .zshrc) #
alias zsh-loading="source $HOME/.zshrc"
