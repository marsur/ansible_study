#!/bin/bash

# do you like ping pong? Let's started with ansible ping pong" 

yum install ansible -y

ansible all -m ping 
