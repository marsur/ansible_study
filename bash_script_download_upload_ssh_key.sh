#!/bin/bash

# only for understanding: 10.0.2.7 --> (server with ssh keys) ---> server to ansible-playbook are defined /etc/ansible/hosts

#we need download ssh keys from 1 server and upload to other servers via ansible-playbook

# Ingredients:

echo sshfs ansible-playbook mountpoints

# First : install sshfs (if we have sshfs, yum will inform us: package is installed)

yum install sshfs


#Second: check if ssh is running
ssh root@10.0.2.7 uptime


#Third: welcome my pipestatus, you missed me! ....Ok ....If ssh root@10.0.2.7 uptime is ok --> we will continue. If it is no ok, inform us: ic do marii and exit the script

# If you want to more about PIPESTATUS......write me :-)

if [ "${PIPESTATUS[0]}" -ne "0" ]
then


echo ic do marii ssh  server is not running
exit 2

fi

# Fourth: we have to create (or check) mountpoint. Do you know test command?

#if directory exists, it is ok...if not exists we need create it

if test -d /mnt/ssh

then

echo sicko ok > /dev/null

else

mkdir -p /mnt/ssh

fi

ls -l /mnt/

# Fifth: Check or create mounpoint

sshfs root@10.0.2.7:/mnt /mnt/ssh

df -hT

# Sixth: use the ansible

ansible-playbook /etc/ansible/playbooks/ssh_root.yaml


#Seventh: go to beer and enjoy Linux life...Janci? 

