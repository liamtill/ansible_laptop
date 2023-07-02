#!/bin/bash

# Initial script to install requirements to run Ansible

echo "Installing curl"
sudo apt install curl

echo "Installing pip and Ansible"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
# python3 -m pip install --user ansible

sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
echo "Checking Ansible version"
ansible --version

echo "Running playbook"
ansible-playbook playbooks/main.yaml

echo "Final Steps:"
echo "Configure syncthing"
echo "Configure ohmyzsh"
echo "Log into services"