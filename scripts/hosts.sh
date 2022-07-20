#!/bin/bash

#script for checking which server is in /etc/hosts

echo enter the name of server

read server 

cat /etc/hosts | grep -i $server 

#or you can redirect to file

