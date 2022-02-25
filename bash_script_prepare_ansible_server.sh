#!/bin/bash

echo "use proxy for yum (if you don't need proxy use empty)"

read skvarky

echo proxy=http://$skvarky >> /etc/yum.conf
echo proxy=https://$skvarky >> /etc/yum.conf

yum repolist 

yum install epel-release -y

yum install ansible -y

yum install git -y

yum update -y

#geneate ssh keys and upload to github

ssh-keygen -t rsa -b 4096 -C "Me"

ls -l /root/.ssh/

echo you can upload your public key to github

echo go to a beer with Steffen
