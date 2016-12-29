# File   : .zshrc
# Author : ananth.shrinivas@gmail.com

# defaults {
    setopt extendedglob notify
# }

# shell {
    # prompt {
        autoload -U colors && colors
        export PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg_no_bold[yellow]%}%~ %{$reset_color%}%# "
    # }

    # history {
        export HISTFILE="${HOME}/.zsh/history"
        export HISTSIZE=10000000
        export SAVEHIST=10000000
        unsetopt extended_history
        setopt append_history inc_append_history hist_ignore_space hist_ignore_dups
    # }
# }

# exports {
    # path {
        export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/usr/bin:/bin:"
    # }
    # fpath {
        export FPATH="${HOME}/.zsh/functions:${FPATH}"
    # }
    # homebrew {
        export HOMEBREW="${HOME}/.homebrew"
        export PATH="${HOMEBREW}/bin:${PATH}"
    # }
# }

# tools {
    # common {
        alias ls="gls --color=auto --group-directories-first -N"
        alias grep="egrep --color=auto"
        alias tree="tree -C --dirsfirst"
        alias serve='echo "http://127.0.0.1:8080/"; python -m http.server --bind 127.0.0.1 8080'
    # }
    # tmux {
        alias tmux="tmux -2"
        alias tl="tmux -2 list-sessions"
        alias tn="tmux -2 new-session -s"
        alias tx="tmux -2 attach-session -t"
        alias tload='tmuxp load -2'
    # }
    # less {
        export LESSOPEN="| ${HOMEBREW}/bin/src-hilite-lesspipe.sh %s"
        export LESS=" -R -X -F "
        export LESSHISTFILE="/dev/null"
    # }
    # python {
        alias python="python3"
        alias pip="pip3"
        export PYTHONDONTWRITEBYTECODE="yes"
        export PIP_REQUIRE_VIRTUALENV="yes"
        [[ -n "${VIRTUAL_ENV}" ]] && [[ -f "${VIRTUAL_ENV}/bin/activate" ]] && source ${VIRTUAL_ENV}/bin/activate
        autoload -Uz pyenv
    # }
    # golang {
        export GOPATH="${HOME}/src/go"
        export PATH="${PATH}:/usr/local/go/bin:${GOPATH}/bin"
        autoload -Uz goenv
    # }
    # rust {
        export PATH="${PATH}:${HOME}/.cargo/bin"
        autoload -Uz rustenv       
    # }
    # cpp {
        autoload -Uz cppenv
    # }
# }

# .zshrc.local {
    [[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
# }
