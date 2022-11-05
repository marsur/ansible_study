#!/bin/bash

echo welcome to ansible install 

#ansible is on epel repositories

yum install epel-release -y

sleep 10

yum install ansible -y 

sleep 20

yum update -y 

#reboot? 

echo "maybe it's time for reboot server" 



