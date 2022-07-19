#!/bin/bash


# skript for checking ssh

# list.txt is file the where are saved the servers (hostnames or IP addresses) 


for server in $(cat /home/princbajaja/check_ssh/list.txt)
do

# to StrictHostKeyChecking=no == not checking keys (where )

        if ssh  -o StrictHostKeyChecking=no root@$server "true"
        then

# for clear conneaction, hostanmes which are ok ---> ok.txt 
                echo "server $server: ok"   >> ok.txt

        else

# for problems with connection (network, routing, permissions, ssh keys, firewall)

       echo "server $server: failed" >> no_ok.txt

fi

done

date


# don't forget your signature...

echo "Fantomas was here"

exit 0
