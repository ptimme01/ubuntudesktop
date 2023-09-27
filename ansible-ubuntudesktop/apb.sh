#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Argument should be ansible playbook name"
    exit
fi

# Always make sure the script runs from the directory this script is located
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

ansible-playbook $1 --skip-tags "out" --ask-become-pass --ask-vault-pass
