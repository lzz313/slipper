#!/bin/bash

SLIPPER_HOME=/home/$(whoami)/.slipper/server

cd $SLIPPER_HOME

echo $(curl ifconfig.me) > addr
git add .
git commit -m "commit by post.sh on $(date)" -a
git push
