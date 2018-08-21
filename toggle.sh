#!/bin/bash

FILE=/tmp/active
TITLE="terminator-terminal"
TERMINAL="terminator" # you can use gnome-terminal if you wish

eval "xdotool search --name $TITLE"
if [ $? -ne 0 ] ; then
    eval "$TERMINAL --title $TITLE"
    touch $FILE
else
    if [[ -f $file ]] ; then
        eval "xdotool search --name $TITLE | xargs -n 1  xdotool windowminimize"
        rm $FILE
    else
        touch $FILE
        eval "xdotool search --name $TITLE | xargs -n 1  xdotool windowactivate"
    fi
fi    
