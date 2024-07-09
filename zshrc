#-------------------------------------------------------------------------------------

# Dwave Token
export DWAVE_API_TOKEN="DEV-108cfb55739c25318a509bd4cbfbb5519903da9e"

#-------------------------------------------------------------------------------------

# PATH GIT
export PATH=~/.bin:$PATH

#-------------------------------------------------------------------------------------

# Color Promt
autoload -U colors && colors
PS1="%B%{$fg[green]%}%~ %B%{$reset_color%}%% "
alias ls='ls -G'
export CLICOLOR=1 
export LSCOLORS=GxBxhxDxfxhxhxhxhxGxGx  

#-------------------------------------------------------------------------------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#-------------------------------------------------------------------------------------