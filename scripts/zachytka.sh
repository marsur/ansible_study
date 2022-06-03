#!/bin/bash


#for in 


# $PWD is the same as command pwd 

for sport_billy in $(cat $PWD/list.txt)

do


# mkdir on servers which are defined in $PWD/list.txt

ssh root@$sport_billy "mkdir /etc/Jurosik"


# secure copy from local server to servers are in $PWD/list.txt 



scp /root/file.txt $sport_billy:/etc/Jurosik/

done
