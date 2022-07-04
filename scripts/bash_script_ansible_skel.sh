#!/bin/bash 

#this script is only for custom to my presentation

#checking or creating /mnt/skel

if test -d  /mnt/skel/.ssh/ 

then 

echo "vsetko ok, kupme si haslerky alebo burizony"

else 

mkdir -p /mnt/skel/.ssh 

fi

#checking or copying .ssh/authorized_keys

if test -e /mnt/skel/.ssh/authorized_keys

then 
echo "vsetko ok, kup haslerky"

else 

echo "harabin vyhral"; cp -f /mnt/keys/authorized_keys /mnt/skel.ssh/authorized_keys

fi 

ansible-playbook /etc/ansible/playbooks/copy_skel.yaml
