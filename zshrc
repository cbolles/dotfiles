#-----Setup Custom Config Locations------#
source ~/.config/config_setup.sh

#----------Misc Custom Settings----------#
export TERM="xterm-256color"
# Path for anaconda
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize
export EDITOR="nvim"

#----------ZSH settings----------#
export ZSH="/Users/collinbolles/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(docker zsh-autosuggestions colorize brew)
source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh

#----------Java Settings---------#
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
/usr/libexec/java_home -v 1.8 > /dev/null

#----------Spaceship Theme Settings----------#
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CONDA_PREFIX=""
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_VENV_PREFIX=""
SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_CHAR_SYMBOL="ᐅ "
SPACESHIP_CONDA_SHOW=false

#----------Powershell Settings----------#
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-remotebranch git-tagname)
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders

# Used to test available icons
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(icons_test)

#----------Embedded Development----------#
export GCC_ARM_TOOLS_PATH=/Users/collinbolles/software/gcc-arm-none-eabi-7-2018-q2-update/bin

#---------Python-----------#
export PATH="$HOME/.poetry/bin:${PATH}"

#---------MicMac----------#
export PATH="/Users/collinbolles/software/micmac/bin:${PATH}"

#---------Aliases----------#
alias cp='cp -rv'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias cs243='cd /Users/collinbolles/devel/rit/CS243-SI/CSCI_243'
alias cs261='cd /Users/collinbolles/devel/rit/CS261'
alias evt='cd /Users/collinbolles/devel/rit/evt/firmware/mbed-applications && source venv/bin/activate'
alias vim='nvim'
alias start_mosquitto='/usr/local/sbin/mosquitto -c /usr/local/etc/mosquitto/mosquitto.conf'
alias weather='curl http://wttr.in/'

#----------.NET----------#
export PATH="$PATH:/Users/collinbolles/.dotnet/tools"

#----------Remote Connections----------#
alias gccis="ssh cjb2849@andromeda.cs.rit.edu"
alias glados="ssh cjb2849@glados.cs.rit.edu"
alias pi3="ssh pi@129.21.65.60"
alias box="ssh collin@192.168.1.73"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/collinbolles/software/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/collinbolles/software/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/collinbolles/software/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/collinbolles/software/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/opencv@2/bin:$PATH"
