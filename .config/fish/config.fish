# enable vi mode.

fish_vi_mode

# set env variables.

set -x PATH $PATH ~/.bin/
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# set command aliases.

alias ls "ls --color=auto"
alias ll "ls -alF"

alias vim "nvim"
alias :e "nvim"
alias :E "nvim"
alias :q "exit"

