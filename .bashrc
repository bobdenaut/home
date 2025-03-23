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

alias zpool-iostat="zpool iostat -v 1"
alias arcs="arcstat -f time,hit%,arcsz,mfu,dh%,ph%,mh% 1"
alias firmware-update="sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose"
alias zlist="zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoint,recordsize"
alias f="find . -type f|fzf --preview 'less {}'"
alias fe='vim $(fzf --preview "less {}")'
