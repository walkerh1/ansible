#!/bin/bash

## Install ansible and peer dependencies
dnf install -y git ansible

## Pulls ansible repo and runs ansible-playbook on local.yml
ansible-pull -U https://github.com/walkerh1/ansible.git --ask-vault-pass --ask-become-pass
