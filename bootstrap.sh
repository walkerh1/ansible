#!/bin/bash

## Update
sudo apt-get update
sudo apt-get upgrade -y

## Install ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y curl git software-properties-common build-essential ansible

## pull ansible
sudo ansible-pull -U https://github.com/walkerh1/ansible.git --ask-vault-pass --ask-become-pass
