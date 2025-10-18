# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Istoric infinit (sau aproape infinit)
export HISTSIZE=
export HISTFILESIZE=

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/liviu/.local/share/flatpak/exports/share
# zfs
alias zpool-iostat="zpool iostat -v 1"
alias arcs="arcstat -f time,hit%,arcsz,mfu,dh%,ph%,mh% 1"
alias firmware-update="sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose"
alias zlist="zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoint,recordsize"
alias zlists="zfs list -t snap"
#search and edit
alias f="find . -type f|fzf --preview 'less {}'"
alias fe='nvim $(fzf --preview "less {}")'
alias h='history'
alias vim="nvim"

# PATH pentru postgres local
export PATH="$PATH:/usr/lib/postgresql/17/bin:/postgres/bin"
# Aliasuri pentru PostgreSQL local
alias pgstart="postgres-local.sh start"
alias pgstop="postgres-local.sh stop"
alias pgstatus="postgres-local.sh status"
alias pgrestart="postgres-local.sh restart"
alias pgcli="psql -h /postgres/run -U liviu -d postgres"

# Path pentru Wildfly
export PATH="$PATH:/wildfly/37.0.1.Final/bin/"

alias vmup="sudo systemctl start libvirtd.service qemu-kvm.service"
alias vmdn="sudo systemctl stop libvirtd.service libvirtd.socket libvirtd-ro.socket libvirtd-admin.socket qemu-kvm.service"
alias vmst="systemctl status libvirtd.service qemu-kvm.service --no-pager"
alias smb-router="smbclient //bobdenaut-router/smb"
alias init-ssh-git="ssh-add ~/.ssh/id_ed25519"

alias myips='echo "IPv4: $(curl -4 -s https://ifconfig.me)"; echo "IPv6: $(curl -6 -s https://ifconfig.me)"'

export PATH="$PATH:/home/liviu/.local/bin/"

# Ctrl+R + fzf, execută imediat comanda selectată
__fzf_history__() {
  local selected

  selected=$(history | awk '{$1=""; print substr($0,2)}' | \
    fzf --tac --exact --no-sort --preview 'echo {}' --preview-window=up:1:wrap) || return

  READLINE_LINE=$selected
  READLINE_POINT=${#READLINE_LINE}

  bind '"\C-j": accept-line'
  printf "\n"
  bind -r '\C-j'
}
bind -x '"\C-r": "__fzf_history__"'


