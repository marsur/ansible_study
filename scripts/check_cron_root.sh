#!/bin/bash

# we need check cron 

if test -e /var/spool/cron/root

then cat /var/spool/cron/root

else 

mkdir -p /var/spool/cron/

touch /var/spool/cron/root

cp -vf /root/backup_cron_root /var/spool/cron/root

cat /var/spool/cron/root 

fi
