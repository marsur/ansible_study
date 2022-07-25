#!/bin/bash

# servers.txt

for server in $(cat $PWD/servers.txt)

do 

ssh root@$server uptime -s >> file.txt ; ssh root@$server hostname -f >> file.txt

done

echo "Ja som vyhral..."
