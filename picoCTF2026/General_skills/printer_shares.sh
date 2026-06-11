#!/bin/bash

nc -vz mysterious-sea.picoctf.net $1

smbclient //mysterious-sea.picoctf.net/shares -p $1 -N << EOF
ls
get flag.txt
cd directory
quit
EOF