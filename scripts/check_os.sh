#!/bin/bash

#script to version of server and hostname output to file.txt

echo "Ready...steady..."

# variable is server 
# $PWD is variable for command pwd

for server in $(cat $PWD/list.txt)

do 

ssh root@$server  cat /etc/*release | grep -i Version >> file.txt ; ssh root@$server hostname -f >> file.txt


done

date 

echo "go to a beer and enjoy your life"

echo "for slovak people: torture blaha"
