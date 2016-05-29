# enable vi mode.

#fish_vi_mode

fish_vi_key_bindings
set -g __fish_vi_mode 1

#fish_vi_cursor
#set fish_cursor_default block
#set fish_cursor_insert line
#set fish_cursor_visual block

# set env variables.

set -x PATH $PATH ~/.bin/
set -x PATH $HOME/.cargo/bin $PATH
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# set command aliases.

alias cd.. "cd .."
alias ls "ls --color=auto"
alias ll "ls -alF"

alias vim "nvim"
alias :e "nvim"
alias :E "nvim"
alias :q "exit"

