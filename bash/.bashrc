# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Butty added:
export PATH="/usr/local/bin:$PATH"   # added for fio

# Buttys Custom Profile:
[[ -f /scripts/mbutty/butbin/butty_profile ]] && source /scripts/mbutty/butbin/butty_profile
# Buttys Benchmark Environment setup:
[[ -f /scripts/mbutty/bmscripts/bmprofile ]] && source /scripts/mbutty/bmscripts/bmprofile


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/root/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/root/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/root/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/root/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Useful tools zoxide (replaces cd), fzf (fuzzy finder try Ctrl-R), direnv (directory custom envs):
which zoxide > /dev/null 2>&1 && eval "$(zoxide init bash --cmd cd)"
which fzf > /dev/null 2>&1 && eval "$(fzf --bash)"
which direnv > /dev/null 2>&1 && eval "$(direnv hook bash)"
