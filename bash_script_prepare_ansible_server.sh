#!/bin/bash


yum repolist 

yum install epel-release -y

yum install ansible -y

yum install git -y

yum update -y

#geneate ssh keys and upload to github

ssh-keygen -t rsa -b 4096 -C "Me"

ls -l /root/.ssh/

cat /root/.ssh/id_rsa.pub

echo you can upload your public key to github

echo go to a beer with Steffen
