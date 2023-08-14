# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='\[\033[01;36m\][\u@\h \A\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '
PS1='\[\033[01;36m\][\u@\h \A\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '
export EDITOR=nvim

# Add scripts path
export PATH=$PATH:~/Scripts
export PATH=$PATH:/opt/eclipse-clp/bin/x86_64_linux
export PATH=$PATH:/opt/resolve/bin/
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
#export PATH=~/Documents/pebble-dev/pebble-sdk-4.5-linux64/bin:$PATH
#export PATH="$PATH:$HOME/.gem/ruby/3.0.0/bin"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

# export emscripten tools path
export EMSCRIPTEN="/home/tradam/.asdf/shims"

# set qt theme to arc-dark
export QT_STYLE_OVERRIDE=kvantum

#alias shut='sudo shutdown -hp 0'
alias la='ls -A'
alias trsync='rsync -Pr --info=progress2 --no-i-r'
alias trash='gio trash'
#alias server='ssh -X 192.168.1.10'

# Ssh-agent (do this for git)
eval `ssh-agent` > /dev/null 2> /dev/null
#ssh-add -q /home/tradam/.ssh/malcz #> /dev/null 2> /dev/null
ssh-add -q /home/tradam/.ssh/realtradam #> /dev/null 2> /dev/null

#source /usr/share/doc/pkgfile/command-not-found.bash


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# Created by `pipx` on 2022-03-08 22:25:28
export PATH="$PATH:/home/tradam/.local/bin"

# asdf version manager for programming languages
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# for dotnet/csharp stuffs
#. ~/.asdf/plugins/dotnet-core/set-dotnet-home.bash

eval "$(starship init bash)"

