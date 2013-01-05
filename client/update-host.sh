#!/bin/bash
domain="host.me"
addr=$(cat ../server/addr)
if [[ $(grep "^.*$domain" /etc/hosts) ]]; then
sudo sed -i "s/^.*$domain/$addr\t$domain/g" /etc/hosts
else;
echo -e "$addr\t$domain" | sudo tee -a /etc/hosts
fi
