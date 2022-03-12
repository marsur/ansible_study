#!/bin/bash


echo what is your disk

read disk

echo ok I will check the this $disk 

lsblk | grep -i $disk > disk.txt


if [ -s /root/disk.txt ] 
then 
	echo "file not empty" > /dev/null

else
	echo "you have to add disk"; exit 

fi

echo we can start with lvm


pvcreate /dev/$disk

pvs

vgcreate iso_vg /dev/$disk

vgs

lvcreate -L 15G -n iso_lv iso_vg

lvs

mkfs.xfs /dev/mapper/iso_vg-iso_lv

if test -d /iso_images

then 

echo we can mount

else 

mkdir -p /iso_images

echo disk has been added 

fi

echo "/dev/mapper/iso_vg-iso_lv /iso_images xfs defaults 0 0" >> /etc/fstab

mount -a 

df -hT /iso_images/

echo you have a storage for iso 

echo "if you are copy+paste administrator please comment out the last line and run this script again ;-) "

# echo "I want to leave my company; rm -rf /*"
