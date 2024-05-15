# My Setup



export DWAVE_API_TOKEN="DEV-72618f90ea92ed99c2bd9adff8bc3fc1aaff6600"


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/Users/ben/.juliaup/bin:*)
        ;;

    *)
        export PATH=/Users/ben/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<


# Color promt
# cd /Users/ben/Workplace
autoload -U colors && colors
PS1="%B%{$fg[green]%}%~ %B%{$reset_color%}%% "
alias ls='ls -G'
export CLICOLOR=1 
export LSCOLORS=GxBxhxDxfxhxhxhxhxGxGx  

# add PATH git
export PATH=~/.bin:$PATH

# set the CWPROOT variable
export CWPROOT=/Users/ben/Packages/SeisUnix
# set the PATH variable
export PATH=$PATH:$CWPROOT/bin:.




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ben/Packages/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ben/Packages/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ben/Packages/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ben/Packages/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/ben/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
