#!/bin/sh

VNCPASS=${VNCPASS:-secret}
mkdir -p ~/.vnc \
x11vnc -storepasswd $VNCPASS ~/.vnc/passwd

x11vnc -forever -usepw -shared -rfbport 5900 -display $DISPLAY &
