#!/usr/bin/env bash

set -exu

DEFAULTBRANCH="main"
GITBRANCH="${1:-$DEFAULTBRANCH}"
REPOSRC=https://github.com/hootieben/workstation.git
LOCALREPO=~/.config/workstation

git clone -b "$GITBRANCH" "$REPOSRC" "$LOCALREPO" 2> /dev/null || git -C "$LOCALREPO" pull
ansible-galaxy install -r "$LOCALREPO/requirements.yml"
ansible-playbook -b "$LOCALREPO/playbook.yml"
