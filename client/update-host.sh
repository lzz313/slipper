#!/bin/bash
username="e3rpay"
domain="host.me"
addr=$(curl https://raw.github.com/$username/slipper/master/server/addr)
if [[ $(grep "^.*$domain" /etc/hosts) ]]; then
sudo sed -i "s/^.*$domain/$addr\t$domain/g" /etc/hosts
else
echo -e "$addr\t$domain" | sudo tee -a /etc/hosts
fi
