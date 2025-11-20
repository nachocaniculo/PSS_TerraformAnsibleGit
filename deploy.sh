#!/bin/bash
set -e

TF_DIR="./Terraform"
ANSIBLE_DIR="./Ansible"
ANSIBLE_PLAYBOOK="site.yml"

echo "-Starting and applying Terraform-"
cd "$TF_DIR"
terraform init
terraform apply -auto-approve

cd ..

chmod 400 $ANSIBLE_DIR/NachoCaniculo.pem

echo "-Executing Ansible Playbook-"
export ANSIBLE_CONFIG=$ANSIBLE_DIR/ansible.cfg
ansible-playbook $ANSIBLE_DIR/$ANSIBLE_PLAYBOOK

echo "Deploy done!"
