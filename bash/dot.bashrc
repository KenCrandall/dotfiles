#!/bin/bash
#
# .bashrc
#

# Source bash completion
if [ -f ~/.bash_completion ]; then
	. ~/.bash_completion
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
