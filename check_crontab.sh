#!/bin/bash


# overime, ci existuje adresar /var/spool/cron - ked ano, tak super, ked nie, vytvori ho

if test -d /var/spool/cron

then echo "ok, super" 

else 

mkdir -p /var/spool/cron

fi

echo cron je super nastroj, vdaka nemu nemusime v noci vstavat a pustat vsetko rucne

