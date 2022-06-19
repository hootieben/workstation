#!/usr/bin/env bash

set -exu

export DEBIAN_FRONTEND=noninteractive
add-apt-repository --yes --update ppa:git-core/ppa
apt-get install --yes git software-properties-common python-is-python3 python3-pip kitty-terminfo
add-apt-repository --yes --update ppa:ansible/ansible
apt-get install --yes ansible
