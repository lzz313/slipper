#!/bin/bash

SLIPPER_HOME=/home/$(whoami)/.slipper

cd $SLIPPER_HOME

address=$(curl ifconfig.me)

if [ -e $address "" ]; then
    exit 1
fi

#cat << EOF > addr.js
#{"addr": "$address"} 
#EOF
echo var o = { \"addr\" : \"$address\" } > addr.js
echo $address > addr

git pull origin gh-pages
git add .
git commit -m "commit by post.sh on $(date)" -a
git push origin gh-pages
