#----------------------------------------------------------
# enable vi mode.
#----------------------------------------------------------

#set -g fish_key_bindings fish_vi_key_bindings
fish_vi_key_bindings
function fish_mode_prompt; end
#set -g __fish_vi_mode 1

#fish_vi_mode
#fish_vi_cursor
#set fish_cursor_default block
#set fish_cursor_insert line
#set fish_cursor_visual block

#function fish_user_key_bindings
#  bind \\ce accept-autosuggestion execute
#end

#----------------------------------------------------------
# provide nvm command (node.js version manager).
#----------------------------------------------------------

# https://github.com/fisherman/fisherman
# fisher edc/bass
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

##bass source ~/.nvm/nvm.sh nvm >/dev/null ^&1
#nvm use default 2>&1 >/dev/null

#----------------------------------------------------------
# set env variables.
#----------------------------------------------------------

set -x PATH $PATH ~/.local/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH /usr/lib/dart/bin
set -x EDITOR nvim
set -x VISUAL nvim
set -x SHELL fish

#----------------------------------------------------------
# set command aliases.
#----------------------------------------------------------

alias cd.. "cd .."
alias ls "ls --color=auto"
alias ll "ls -alF"

alias vim "nvim"
alias :e "nvim"
alias :E "nvim"
alias :q "exit"

alias git "hub"
alias sau "sudo apt update; sudo apt upgrade"

#source ~/.config/fish/nvm-wrapper/nvm.fish

#----------------------------------------------------------
# set greeting message.
#----------------------------------------------------------

function fish_greeting
  #echo; fortune -as de; echo
  #echo; fortune -a; echo
end
#set --erase fish_greeting

#----------------------------------------------------------
# set bob-the-fish theme.
#----------------------------------------------------------

set -g theme_display_vi yes
set -g theme_date_format "+%H:%M"
set -g theme_display_hg yes
set -g theme_display_git no
set -g theme_display_git_untracked no
