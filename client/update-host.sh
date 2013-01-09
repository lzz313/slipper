#!/bin/bash
. profile
addr=$(curl $addr_url)
if [[ $(grep "^.*$domain" /etc/hosts) ]]; then
sudo sed -i "s/^.*$domain/$addr\t$domain/g" /etc/hosts
else
echo -e "$addr\t$domain" | sudo tee -a /etc/hosts
fi
