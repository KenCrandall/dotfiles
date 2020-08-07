#!/bin/bash
#
# .bashrc
#

LOGFILE=$HOME/.bash.log
echo ".bashrc" > $LOGFILE
DATE=$(date)
echo $DATE >> $LOGFILE

# Source bash completion
if [[ -f $HOME/.bash_completion ]] 
then
    source $HOME/.bash_completion
    echo ".bash_completion" >> $LOGFILE
fi

# Source global definitions
#if [[ -f /etc/bashrc ]] 
#then
#    source /etc/bashrc
#fi

# Source local vars
if [[ -f $HOME/.bash_vars ]] 
then
    source $HOME/.bash_vars
    echo ".bash_vars" >> $LOGFILE
fi

# Source local aliases
if [[ -f $HOME/.bash_aliases ]] 
then
    source $HOME/.bash_aliases
    echo ".bash_aliases" >> $LOGFILE
fi

# Source os secret sauce
if [[ -f $HOME/.bash_os ]] 
then
    source $HOME/.bash_os
    echo ".bash_os" >> $LOGFILE
fi

# Source local prompt
if [[ -f $HOME/.bash_prompt ]] 
then
    source $HOME/.bash_prompt
    echo ".bash_prompt" >> $LOGFILE
fi
