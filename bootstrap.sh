#!/bin/bash

## Install homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Use brew to install git and ansible
brew install git ansible
