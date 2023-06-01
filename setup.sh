#!/bin/bash

### OUTDATED ###

sudo apt update && sudo apt install curl python3 python3-distutils python3-apt python3-pip

sudo python3 -m pip -V && sudo python3 -m pip install ansible boto3 botocore --break-system-packages

sudo apt-add-repository ppa:ansible/ansible \
    && sudo apt update && sudo apt install ansible -y

sudo ansible --version && sudo python3 -m pip show ansible

sudo ansible-galaxy collection install amazon.aws community.aws
