# .bashrc

# cancel warning
BASH_SILENCE_DEPRECATION_WARNING=1
export BASH_SILENCE_DEPRECATION_WARNING

# Source Bash completion
#if [ -f /usr/share/bash-completion/bash_completion ]; then
#	. /usr/share/bash-completion/bash_completion
#fi

if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local vars
if [ -f ~/.bash_vars ]; then
	. ~/.bash_vars
fi

# Source local aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Source os secret sauce
if [ -f ~/.bash_os ]; then
	. ~/.bash_os
fi

# Source local prompt
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

