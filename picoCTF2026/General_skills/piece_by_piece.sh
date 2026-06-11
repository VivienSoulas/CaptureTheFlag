#!/bin/bash

sshpass -p a15d25e1 ssh -o StrictHostKeyChecking=no ctf-player@dolphin-cove.picoctf.net -p $1 << EOF
cat part_* > flag.zip
unzip -P supersecret flag.zip
cat flag.txt
EOF