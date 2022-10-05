#!/bin/bash

sudo apt update && sudo apt install curl python3 python3-distutils python3-apt

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python3 get-pip.py --user && rm -rf get-pip.py

python3 -m pip -V && python3 -m pip install --user ansible

sudo apt-add-repository ppa:ansible/ansible \
    && sudo apt update && sudo apt install ansible -y

ansible --version && python3 -m pip show ansible