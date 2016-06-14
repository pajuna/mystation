#!/bin/bash

# Purpose:
# * bootstrap machine in order to prepare for ansible playbook run
#
set -e

# Download and install Command Line Tools if no developer tools exist
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]
then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]
then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]
then
    echo "Info   | Install   | Ansible"
    brew update
    brew install ansible
fi

# Modify the PATH
# This should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH
