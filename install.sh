#!/bin/bash
apt-add-repository ppa:ansible/ansible
apt update
apt install ansible

mkdir /etc/ansible
touch /etc/ansible/hosts

hosts=(10.10.10.2 10.10.10.3 10.10.10.4 10.10.10.5)
ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N ""

for h in ${hosts[@]}; do
    ssh-copy-id $h
done