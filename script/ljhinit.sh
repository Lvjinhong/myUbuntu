alias nv='watch -n 1 nvidia-smi'
alias ut='watch -d uptime'
alias ww='watch -d w'
alias ca="conda activate "
alias plg="pip list | grep"
alias cg='watch -d -n 3 curl www.google.com'
alias lg="ls | grep"
alias llg="ll | grep"
alias peg="ps -ef | grep"
alias tn="tmux new -s"                                                                                    
alias ts="tmux switch -t"
alias tks="tmux kill-session -t"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/inspur/nfs/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/inspur/nfs/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/inspur/nfs/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/inspur/nfs/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/inspur/nfs/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/inspur/nfs/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

#export PATH="$(echo $PATH | python /home/inspur/nfs/ljh/dealPath.py)"
