# Server
#-------------------------------------------------------------------------------------
# ssh-copy-id hoanganh_nguyen@magnus.mines.edu 
alias magnus='ssh hoanganh_nguyen@magnus.mines.edu'
alias sybil='ssh hoanganh_nguyen@sybil.mines.edu'


# alias
#-------------------------------------------------------------------------------------
alias w='cd ~/Desktop/Workspace/'
alias fwi='cd ~/Desktop/Workspace/fwi'
alias j='julia --project=@.'
alias t='tree -L 1'
alias t2='tree -L 2'



# alias obspy='conda activate obspy'
# alias devito='conda activate devito'
# alias dwave='conda activate dwave'



# Open MPI
#-------------------------------------------------------------------------------------
export TMPDIR=/tmp


# Gipptools
#-------------------------------------------------------------------------------------
export PATH=~/Programs/gipptools-2024.170/bin:$PATH


# Dwave Token
#-------------------------------------------------------------------------------------
export DWAVE_API_TOKEN="DEV-5b4f748252e0df3ae4f3e100b4e7eaa2e12a8330"


# PATH GIT
#-------------------------------------------------------------------------------------
export PATH=~/.bin:$PATH


# Color Promt
#-------------------------------------------------------------------------------------
autoload -U colors && colors
PS1="%B%{$fg[green]%}%~ %B%{$reset_color%}%% "
alias ls='ls -G'
export CLICOLOR=1 
export LSCOLORS=GxBxhxDxfxhxhxhxhxGxGx  


# Conda
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

# Julia
#-------------------------------------------------------------------------------------
# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/ben/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
