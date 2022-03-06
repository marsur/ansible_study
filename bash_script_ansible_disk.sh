#!/bin/bash

lsblk | grep -i sdb > disk.txt

if [ -s /root/disk.txt ] 
then 
	echo "file not empty" > /dev/null

else
	echo "you have to add disk"; exit 

fi

echo we can start with lvm

rm -rf /root/disk.txt

pvcreate /dev/sdb 2> /dev/null

vgcreate ansible_vg /dev/sdb 2 > /dev/null

lvcreate -L 5G -n ansible_lv ansible_vg 2 > /dev/null

ls -l /dev/mapper

mkfs.xfs /dev/mapper/ansible_vg-ansible_lv

if test -d /ansible

then

echo we can mount > /dev/null

else 

mkdir -p /ansible

fi

echo "/dev/mapper/ansible_vg-ansible_lv /ansible xfs defaults 0 0" >> /etc/fstab

mount -a 

df -hT /ansible


cd /ansible

git clone git@github.com:marsur/ansible_study.git

