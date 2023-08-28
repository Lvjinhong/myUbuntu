# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# zstyle ':omz:update' frequency 13
 typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
setopt APPEND_HISTORY
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi



# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"


plugins=(
  git
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ljh/SoftWare/mambaforge-pypy3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ljh/SoftWare/mambaforge-pypy3/etc/profile.d/conda.sh" ]; then
        . "/home/ljh/SoftWare/mambaforge-pypy3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ljh/SoftWare/mambaforge-pypy3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/ljh/SoftWare/mambaforge-pypy3/etc/profile.d/mamba.sh" ]; then
    . "/home/ljh/SoftWare/mambaforge-pypy3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<



# -------------------------------------------alias 命令集合------------------------------------
alias nv='watch -n 1 nvidia-smi'
alias ut='watch -d uptime'
alias ww='watch -d w'
alias ca="conda activate "
alias plg="pip list | grep"
alias mlg="mamba list | grep"
alias cg='watch -d -n 3 curl www.google.com'
alias lg="ls | grep"
alias llg="ll | grep"
alias peg="ps -ef | grep"
alias tn="tmux new -s"                                                                                    
alias ts="tmux switch -t"
alias tks="tmux kill-session -t" 
alias ta="tmux a"
alias tlist="trash-list"
alias tp="trash-put"
alias trestore="trash-restore"
alias trm="trash-rm"
alias v="nvim" 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias nv='watch -n 1 nvidia-smi'

alias setcuda12="export PATH=/usr/local/cuda-12.1/bin:$PATH&&export LD_LIBRARY_PATH=/usr/local/cuda-12.1/lib64:$LD_LIBRARY_PATH"
alias setcuda11="export PATH=/usr/local/cuda-11.8/bin:$PATH&&export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64:$LD_LIBRARY_PATH" 
alias setproxy="systemctl status clash.service; export https_proxy=$claship http_proxy=$claship all_proxy=${claship/http/socks5}; echo '开始测试是否连通google';curl www.google.com"
alias unsetproxy="unset https_proxy http_proxy all_proxy"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias oneapi="source /home/ljh/SoftWare/intel/oneapi/setvars.sh --include-intel-llvm --force"
#--------------------------------- export 环境变量--------------------------------------

export HISTFILESIZE=1000
export claship="http://172.28.172.135:7878"
eval $(thefuck --alias fff)
export EDITOR=/usr/bin/vim
source /home/inspur/nfs/ljh/SoftWare/spack/share/spack/setup-env.sh
export PATH=/usr/local/cuda-12.1/bin:$PATH&&export LD_LIBRARY_PATH=/usr/local/cuda-12.1/lib64:$LD_LIBRARY_PATH
oneapi
#export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/23.5/comm_libs/hpcx/bin:$PATH
# export PATH="/home/ljh/SoftWare/java/jdk-11.0.19/bin":$PATH
# export PATH="/home/ljh/SoftWare/neo4j_4.4/bin":$PATH
