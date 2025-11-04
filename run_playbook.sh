#!/bin/bash +x
ansible-playbook ./6lr_playbook.yml -i ./inventory.ini --diff --ask-become-pass
