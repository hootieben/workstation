#!/bin/bash

set -exu

SUDOREQ=0
if [[ $EUID -ne 0 ]]; then
	if sudo -n -v ; then
		SUDOREQ=0
	else
		SUDOREQ=1
	fi
fi

sudo ./init.sh

if [[ $SUDOREQ -eq 1 ]]; then
	ansible-playbook -i playbooks/inventory -K playbooks/setup.yml
else
	ansible-playbook -i playbooks/inventory playbooks/setup.yml
fi
