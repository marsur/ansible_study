#!/bin/bash

#basic script for create 5 users 

#our variable will be sila

for sila in gulko_bombulko winnetou moricko kocurpazur pufamuf

do useradd $sila

done


for sila in gulko_bombulko winnetou moricko kocurpazur pufamuf 

do passwd $sila

done

sleep 10

id $sila

echo Janci in Kembridz pub is absolutely unstoppable


ls -lahtr /home 
