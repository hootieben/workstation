#!/usr/bin/env bash

set -exu

export DEBIAN_FRONTEND=noninteractive
sudo add-apt-repository --yes --update ppa:git-core/ppa
sudo apt-get install --yes git software-properties-common python-is-python3 python3-pip kitty-terminfo
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install --yes ansible
