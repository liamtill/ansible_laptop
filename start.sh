#!/bin/bash

# Initial script to install requirements to run Ansible

echo "Installing curl"
sudo apt install -y curl

echo "Installing pip and Ansible"
curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python3 /tmp/get-pip.py --user
# python3 -m pip install --user ansible

sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
echo "Checking Ansible version"
ansible --version

echo "Running playbook"
# ensure ansible knows the sudo password
ansible-playbook playbooks/main.yaml --ask-become-pass

echo "Final Steps:"
echo "Configure syncthing"
echo "Configure ohmyzsh"
echo "Log into services"