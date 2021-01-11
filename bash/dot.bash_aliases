#
# Aliases
#
alias cp='cp -i'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -1'
alias la='ls -a'
alias ll='ls -lh'
alias mv='mv -i'
alias pp='prettyping'
alias info='pinfo'
alias man='pinfo -m'
alias manf='pinfo -m -f'
alias scp='rsync --archive --partial --progress --rsh=ssh'
alias mdc='mdcat | less'
alias tree='tree -C | less'

#
# OpenStack
#
alias os='openstack'
alias osa='openstack-ansible'
alias rax='openstack --os-cloud rackspace'
alias tigervnc='/Applications/TigerVNC\ Viewer\ 1.11.0.app/Contents/MacOS/TigerVNC\ Viewer'

#
# Ansible
#
alias a='ansible'
alias ap='ansible-playbook'

#
# 1Password CLI
#
alias oplogin='eval $(op signin crandallnet)'
