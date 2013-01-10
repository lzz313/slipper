#!/bin/bash

SLIPPER_HOME=/home/$(whoami)/.slipper

cd $SLIPPER_HOME

echo $(curl ifconfig.me) > index.html
git add .
git commit -m "commit by post.sh on $(date)" -a
git push
