#!/bin/bash

echo "What disk do you need? Please not /dev/sda"

read disk


fdisk  $disk <<EEOF
n
p
1
2048
+1G



w
EEOF

lsblk -p
echo "may the force be with you"
echo "pray for slovak people: Vader save us! We need you againts Blaha"
exit 0
