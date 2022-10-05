#!/bin/bash

sudo apt update && sudo apt install curl python3 python3-distutils python3-apt

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && sudo python3 get-pip.py && rm -rf get-pip.py

sudo python3 -m pip -V && sudo python3 -m pip install ansible boto3 botocore

sudo apt-add-repository ppa:ansible/ansible \
    && sudo apt update && sudo apt install ansible -y

sudo ansible --version && sudo python3 -m pip show ansible

sudo ansible-galaxy collection install amazon.aws community.aws