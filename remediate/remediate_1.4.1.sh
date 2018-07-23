#!/bin/sh
# ** AUTO GENERATED **

# 1.4.1 - Ensure permissions on bootloader config are configured (Scored)

file=/boot/grub/grub.conf
perm="600 0 0"

p=$(echo $perm | awk {'print $1'} | sed "s/[^0-9]//g" )
o=$(echo $perm | awk {'print $2'})
g=$(echo $perm | awk {'print $3'})

touch $file

if [[ $o -eq 0 && $g -eq 0 ]]; then
        chown root:root $file
fi

chmod $p $file

