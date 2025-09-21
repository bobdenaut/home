# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#opengl
export GDK_GL=gles
# Istoric infinit (sau aproape infinit)
export HISTSIZE=
export HISTFILESIZE=
# Salvează comenzile imediat în ~/.bash_history
shopt -s histappend
# Nu salva comenzile care încep cu spațiu sau duplicate
export HISTCONTROL=ignorespace:ignoredups:erasedups
# Salvează ora și data în istoricul Bash
export HISTTIMEFORMAT="%F %T "
export PROMPT_COMMAND="history -a; history -n"
shopt -s histappend

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/liviu/.local/share/flatpak/exports/share
# zfs
alias zpool-iostat="zpool iostat -v 1"
alias arcs="arcstat -f time,hit%,arcsz,mfu,dh%,ph%,mh% 1"
alias firmware-update="sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose"
alias zlist="zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoint,recordsize,type"
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
alias vmdn="sudo systemctl stop libvirtd.service qemu-kvm.service"
alias vmst="systemctl status libvirtd.service qemu-kvm.service --no-pager"

export PATH="$PATH:/home/liviu/.local/bin/"
. "$HOME/.cargo/env"


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


