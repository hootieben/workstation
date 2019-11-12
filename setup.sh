#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "Setup must be run as root"
	exit 1
fi

apt update
apt install --yes software-properties-common git
echo "Adding Ansible Repo GPG Key"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
echo "Adding Ansible PPA Repo"
apt-add-repository --yes --update ppa:ansible/ansible
apt install --yes ansible
