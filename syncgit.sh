#!/bin/bash

if test -d /root/ansible_study

then echo directory exists

else 

git clone git@github.com:marsur/ansible_study.git

fi

cd /root/ansible_study

git pull

git push


