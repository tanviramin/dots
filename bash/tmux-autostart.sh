#!/bin/bash

# This should always be run last either in .bashrc or as a script in .bash    rc.d
if [[ -z "$TMUX" ]]; then
     tmux has-session &> /dev/null
     if [ $? -eq 1 ]; then
       exec `TERM=xterm-256color tmux new`
       exit
     else
       exec `TERM=xterm-256color tmux attach`
       exit
     fi
fi

